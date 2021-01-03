codeunit 50019 "jdi BingMaps FindLocByAddr v1" implements "jdi BingMaps IFindLocationByAddress"
{
    procedure FindLocationByAddress(Parameter: Dictionary of [enum "jdi BingMaps FindLocationByAddress Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
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

    procedure FindLocationByAddress(Parameter: Dictionary of [enum "jdi BingMaps FindLocationByAddress Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
    begin
        FindLocationByAddress(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, JsonResponse));
    end;


    procedure FindLocationByAddress(Parameter: Dictionary of [enum "jdi BingMaps FindLocationByAddress Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
        FindLocationByAddressParameter: Enum "jdi BingMaps FindLocationByAddress Parameter";
    begin
        if not Parameter.ContainsKey(FindLocationByAddressParameter::output) then
            Parameter.Add(FindLocationByAddressParameter::output, 'xml');

        FindLocationByAddress(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, XmlResponse));
    end;

    local procedure GetQueryString(Parameter: Dictionary of [enum "jdi BingMaps FindLocationByAddress Parameter", Text]): Text
    var
        ParamKeys: List of [Enum "jdi BingMaps FindLocationByAddress Parameter"];
        FindLocationByAddressParameter: Enum "jdi BingMaps FindLocationByAddress Parameter";
        TxtBuilder: TextBuilder;
    begin
        ParamKeys := Parameter.Keys;
        foreach FindLocationByAddressParameter in ParamKeys do
            TxtBuilder.Append(GetEnumName(FindLocationByAddressParameter) + '=' + Parameter.Get(FindLocationByAddressParameter) + '&');

        exit(TxtBuilder.ToText().TrimEnd('&'));
    end;

    local procedure GetEnumName(Parameter: Enum "jdi BingMaps FindLocationByAddress Parameter"): Text
    var
        OrdinalValue: Integer;
        Index: Integer;
    begin
        OrdinalValue := Parameter.AsInteger();
        Index := Parameter.Ordinals.IndexOf(OrdinalValue);
        exit(Parameter.Names.Get(Index));
    end;
}