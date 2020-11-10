codeunit 50014 "jdi BingMaps FindLocByPoint v1" implements "jdi BingMaps IFindLocationByPoint"
{
    Access = Internal;

    procedure FindLocationByPoint(Parameter: Dictionary of [enum "jdi BingMaps FindLocationByPoint Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        UriBuilder: Codeunit "Uri Builder";
        Uri: Codeunit Uri;
    begin
        UriBuilder.Init(BuildBaseUrl(Parameter));
        UriBuilder.SetQuery(GetQueryString(Parameter));
        UriBuilder.GetUri(Uri);
        exit(RESTHelper.InvokeWebRequest(Uri.GetAbsoluteUri(), HttpResponse));
    end;

    procedure FindLocationByPoint(Parameter: Dictionary of [enum "jdi BingMaps FindLocationByPoint Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
    begin
        FindLocationByPoint(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, JsonResponse));
    end;

    procedure FindLocationByPoint(Parameter: Dictionary of [enum "jdi BingMaps FindLocationByPoint Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
        FindLocationByPointParameter: Enum "jdi BingMaps FindLocationByPoint Parameter";
    begin
        if not Parameter.ContainsKey(FindLocationByPointParameter::output) then
            Parameter.Add(FindLocationByPointParameter::output, 'xml');

        FindLocationByPoint(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, XmlResponse));
    end;

    local procedure BuildBaseUrl(Parameter: Dictionary of [enum "jdi BingMaps FindLocationByPoint Parameter", Text]) BaseUrl: Text
    var
        FindLocationByPointParamenter: Enum "jdi BingMaps FindLocationByPoint Parameter";

        BaseUriLbl: Label 'http://dev.virtualearth.net/REST/v1/Locations/%1', Locked = true;
    begin
        if Parameter.ContainsKey(FindLocationByPointParamenter::point) then begin
            BaseUrl := StrSubstNo(BaseUriLbl, Parameter.Get(FindLocationByPointParamenter::point));
            Parameter.Remove(FindLocationByPointParamenter::point);
        end;
    end;

    local procedure GetQueryString(Parameter: Dictionary of [enum "jdi BingMaps FindLocationByPoint Parameter", Text]): Text
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        ParamKeys: List of [Enum "jdi BingMaps FindLocationByPoint Parameter"];
        FindLocationByPointParameter: Enum "jdi BingMaps FindLocationByPoint Parameter";
        TxtBuilder: TextBuilder;
    begin
        if not Parameter.ContainsKey(FindLocationByPointParameter::"key") then
            Parameter.Add(FindLocationByPointParameter::"key", RESTHelper.GetDefaultAPIKey());

        ParamKeys := Parameter.Keys;
        foreach FindLocationByPointParameter in ParamKeys do
            TxtBuilder.Append(GetEnumName(FindLocationByPointParameter) + '=' + Parameter.Get(FindLocationByPointParameter) + '&');

        exit(TxtBuilder.ToText().TrimEnd('&'));
    end;

    local procedure GetEnumName(Parameter: Enum "jdi BingMaps FindLocationByPoint Parameter"): Text
    var
        OrdinalValue: Integer;
        Index: Integer;
    begin
        OrdinalValue := Parameter.AsInteger();
        Index := Parameter.Ordinals.IndexOf(OrdinalValue);
        exit(Parameter.Names.Get(Index));
    end;
}