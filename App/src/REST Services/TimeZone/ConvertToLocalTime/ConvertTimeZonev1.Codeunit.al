codeunit 50012 "jdi BingMaps ConvertTimeZonev1" implements "jdi BingMaps IConvertTimeZone"
{
    procedure ConvertTimeZone(Parameter: Dictionary of [enum "jdi BingMaps ConvertTimeZone Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        UriBuilder: Codeunit "Uri Builder";
        Uri: Codeunit Uri;

        BaseUriLbl: Label 'https://dev.virtualearth.net/REST/v1/TimeZone/Convert/', Locked = true;
    begin
        UriBuilder.Init(BaseUriLbl);
        UriBuilder.SetQuery(GetQueryString(Parameter));
        UriBuilder.GetUri(Uri);
        exit(RESTHelper.InvokeWebRequest(Uri.GetAbsoluteUri(), HttpResponse));
    end;

    procedure ConvertTimeZone(Parameter: Dictionary of [enum "jdi BingMaps ConvertTimeZone Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
    begin
        ConvertTimeZone(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, JsonResponse));
    end;

    procedure ConvertTimeZone(Parameter: Dictionary of [enum "jdi BingMaps ConvertTimeZone Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
        ConvertTimeZoneParameter: Enum "jdi BingMaps ConvertTimeZone Parameter";
    begin
        if not Parameter.ContainsKey(ConvertTimeZoneParameter::output) then
            Parameter.Add(ConvertTimeZoneParameter::output, 'xml');

        ConvertTimeZone(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, XmlResponse));
    end;


    local procedure GetQueryString(Parameter: Dictionary of [enum "jdi BingMaps ConvertTimeZone Parameter", Text]): Text
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        ParamKeys: List of [Enum "jdi BingMaps ConvertTimeZone Parameter"];
        ConvertTimeZoneParameter: Enum "jdi BingMaps ConvertTimeZone Parameter";
        TxtBuilder: TextBuilder;
    begin
        if not Parameter.ContainsKey(ConvertTimeZoneParameter::"key") then
            Parameter.Add(ConvertTimeZoneParameter::"key", RESTHelper.GetDefaultAPIKey());

        ParamKeys := Parameter.Keys;
        foreach ConvertTimeZoneParameter in ParamKeys do
            TxtBuilder.Append(GetEnumName(ConvertTimeZoneParameter) + '=' + Parameter.Get(ConvertTimeZoneParameter) + '&');

        exit(TxtBuilder.ToText().TrimEnd('&'));
    end;

    local procedure GetEnumName(Parameter: Enum "jdi BingMaps ConvertTimeZone Parameter"): Text
    var
        OrdinalValue: Integer;
        Index: Integer;
    begin
        OrdinalValue := Parameter.AsInteger();
        Index := Parameter.Ordinals.IndexOf(OrdinalValue);
        exit(Parameter.Names.Get(Index));
    end;
}