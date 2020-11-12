codeunit 50016 "jdi BingMaps FindLocByQuery v1" implements "jdi BingMaps IFindLocationByQuery"
{
    procedure FindLocationByQuery(Parameter: Dictionary of [enum "jdi BingMaps FindLocationByQuery Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        UriBuilder: Codeunit "Uri Builder";
        Uri: Codeunit Uri;

        BaseUriLbl: Label 'https://dev.virtualearth.net/REST/v1/Locations', Locked = true;
    begin
        UriBuilder.Init(BaseUriLbl);
        UriBuilder.SetQuery(GetQueryString(Parameter));
        UriBuilder.GetUri(Uri);
        exit(RESTHelper.InvokeWebRequest(Uri.GetAbsoluteUri(), HttpResponse));
    end;


    procedure FindLocationByQuery(Parameter: Dictionary of [enum "jdi BingMaps FindLocationByQuery Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
    begin
        FindLocationByQuery(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, JsonResponse));
    end;

    procedure FindLocationByQuery(Parameter: Dictionary of [enum "jdi BingMaps FindLocationByQuery Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
        FindLocationByQueryParameter: Enum "jdi BingMaps FindLocationByQuery Parameter";
    begin
        if not Parameter.ContainsKey(FindLocationByQueryParameter::output) then
            Parameter.Add(FindLocationByQueryParameter::output, 'xml');

        FindLocationByQuery(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, XmlResponse));
    end;

    local procedure GetQueryString(Parameter: Dictionary of [enum "jdi BingMaps FindLocationByQuery Parameter", Text]): Text
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        ParamKeys: List of [Enum "jdi BingMaps FindLocationByQuery Parameter"];
        FindLocationByQueryParameter: Enum "jdi BingMaps FindLocationByQuery Parameter";
        TxtBuilder: TextBuilder;
    begin
        if not Parameter.ContainsKey(FindLocationByQueryParameter::"key") then
            Parameter.Add(FindLocationByQueryParameter::"key", RESTHelper.GetDefaultAPIKey());

        ParamKeys := Parameter.Keys;
        foreach FindLocationByQueryParameter in ParamKeys do
            TxtBuilder.Append(GetEnumName(FindLocationByQueryParameter) + '=' + Parameter.Get(FindLocationByQueryParameter) + '&');

        exit(TxtBuilder.ToText().TrimEnd('&'));
    end;

    local procedure GetEnumName(Parameter: Enum "jdi BingMaps FindLocationByQuery Parameter"): Text
    var
        OrdinalValue: Integer;
        Index: Integer;
    begin
        OrdinalValue := Parameter.AsInteger();
        Index := Parameter.Ordinals.IndexOf(OrdinalValue);
        exit(Parameter.Names.Get(Index));
    end;

}