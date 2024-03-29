codeunit 50013 "jdi BingMaps ListTimeZones v1" implements "jdi BingMaps IListTimeZones"
{
    Access = Internal;

    procedure ListTimeZones(Parameter: Dictionary of [enum "jdi BingMaps Parameter ListTimeZones", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        UriBuilder: Codeunit "Uri Builder";
        Uri: Codeunit Uri;
    begin
        UriBuilder.Init(BuildBaseUrl(Parameter));
        UriBuilder.SetQuery(GetQueryString(Parameter));
        UriBuilder.GetUri(Uri);
        RESTHelper.InvokeWebRequest(Uri.GetAbsoluteUri(), HttpResponse);
        exit(HttpResponse.IsSuccessStatusCode());
    end;

    procedure ListTimeZones(Parameter: Dictionary of [enum "jdi BingMaps Parameter ListTimeZones", Text]; var JsonResponse: JsonObject): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
    begin
        ListTimeZones(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, JsonResponse));
    end;

    procedure ListTimeZones(Parameter: Dictionary of [enum "jdi BingMaps Parameter ListTimeZones", Text]; var XmlResponse: XmlDocument): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
        ListTimeZonesParam: Enum "jdi BingMaps Parameter ListTimeZones";
    begin
        if not Parameter.ContainsKey(ListTimeZonesParam::output) then
            Parameter.Add(ListTimeZonesParam::output, 'xml');

        ListTimeZones(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, XmlResponse));
    end;


    local procedure GetQueryString(Parameter: Dictionary of [enum "jdi BingMaps Parameter ListTimeZones", Text]): Text
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter ListTimeZones"];
        ListTimeZonesParameter: Enum "jdi BingMaps Parameter ListTimeZones";
        TxtBuilder: TextBuilder;
    begin
        ParamKeys := Parameter.Keys;
        foreach ListTimeZonesParameter in ParamKeys do
            TxtBuilder.Append(GetEnumName(ListTimeZonesParameter) + '=' + Parameter.Get(ListTimeZonesParameter) + '&');

        exit(TxtBuilder.ToText().TrimEnd('&'));
    end;

    local procedure GetEnumName(Parameter: Enum "jdi BingMaps Parameter ListTimeZones"): Text
    var
        OrdinalValue: Integer;
        Index: Integer;
    begin
        OrdinalValue := Parameter.AsInteger();
        Index := Parameter.Ordinals.IndexOf(OrdinalValue);
        exit(Parameter.Names.Get(Index));
    end;

    local procedure BuildBaseUrl(Parameter: Dictionary of [enum "jdi BingMaps Parameter ListTimeZones", Text]) BaseUrl: Text
    var
        ListTimeZonesParamenter: Enum "jdi BingMaps Parameter ListTimeZones";

        BaseUriLbl: Label 'https://dev.virtualearth.net/REST/v1/TimeZone/', Locked = true;
        BaseUriListtLbl: Label 'https://dev.virtualearth.net/REST/v1/TimeZone/List', Locked = true;
    begin
        BaseUrl := BaseUriLbl;

        if Parameter.ContainsKey(ListTimeZonesParamenter::timezonestandard) then
            BaseUrl := BaseUriListtLbl;
    end;
}