codeunit 50012 "jdi BingMaps ConvertTimeZonev1" implements "jdi BingMaps IConvertTimeZone"
{
    Access = Internal;

    procedure ConvertTimeZone(Parameter: Dictionary of [enum "jdi BingMaps Parameter ConvertTimeZone", Text]; var HttpResponse: HttpResponseMessage): Boolean;
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

    procedure ConvertTimeZone(Parameter: Dictionary of [enum "jdi BingMaps Parameter ConvertTimeZone", Text]; var JsonResponse: JsonObject): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
    begin
        ConvertTimeZone(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, JsonResponse));
    end;

    procedure ConvertTimeZone(Parameter: Dictionary of [enum "jdi BingMaps Parameter ConvertTimeZone", Text]; var XmlResponse: XmlDocument): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
        ConvertTimeZoneParameter: Enum "jdi BingMaps Parameter ConvertTimeZone";
    begin
        if not Parameter.ContainsKey(ConvertTimeZoneParameter::output) then
            Parameter.Add(ConvertTimeZoneParameter::output, 'xml');

        ConvertTimeZone(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, XmlResponse));
    end;


    local procedure GetQueryString(Parameter: Dictionary of [enum "jdi BingMaps Parameter ConvertTimeZone", Text]): Text
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter ConvertTimeZone"];
        ConvertTimeZoneParameter: Enum "jdi BingMaps Parameter ConvertTimeZone";
        TxtBuilder: TextBuilder;
    begin
        ParamKeys := Parameter.Keys;
        foreach ConvertTimeZoneParameter in ParamKeys do
            TxtBuilder.Append(GetEnumName(ConvertTimeZoneParameter) + '=' + Parameter.Get(ConvertTimeZoneParameter) + '&');

        exit(TxtBuilder.ToText().TrimEnd('&'));
    end;

    local procedure GetEnumName(Parameter: Enum "jdi BingMaps Parameter ConvertTimeZone"): Text
    var
        OrdinalValue: Integer;
        Index: Integer;
    begin
        OrdinalValue := Parameter.AsInteger();
        Index := Parameter.Ordinals.IndexOf(OrdinalValue);
        exit(Parameter.Names.Get(Index));
    end;
}