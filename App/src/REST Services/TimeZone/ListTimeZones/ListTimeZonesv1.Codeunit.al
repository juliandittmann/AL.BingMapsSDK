codeunit 50013 "jdi BingMaps ListTimeZones v1" implements "jdi BingMaps IListTimeZones"
{
    procedure ListTimeZones(Parameter: Dictionary of [enum "jdi BingMaps ListTimeZones Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    var
        UriBuilder: Codeunit "Uri Builder";
        Uri: Codeunit Uri;
    begin
        UriBuilder.Init(BuildBaseUrl(Parameter));
        UriBuilder.SetQuery(GetQueryString(Parameter));
        UriBuilder.GetUri(Uri);
        exit(InvokeWebRequest(Uri.GetAbsoluteUri(), HttpResponse));
    end;

    procedure ListTimeZones(Parameter: Dictionary of [enum "jdi BingMaps ListTimeZones Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    var
        HttpResponse: HttpResponseMessage;
    begin
        ListTimeZones(Parameter, HttpResponse);
        exit(ProcessHttpResponseMessage(HttpResponse, JsonResponse));
    end;

    procedure ListTimeZones(Parameter: Dictionary of [enum "jdi BingMaps ListTimeZones Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
    var
        HttpResponse: HttpResponseMessage;
        ListTimeZonesParam: Enum "jdi BingMaps ListTimeZones Parameter";
    begin
        if not Parameter.ContainsKey(ListTimeZonesParam::output) then
            Parameter.Add(ListTimeZonesParam::output, 'xml');

        ListTimeZones(Parameter, HttpResponse);
        exit(ProcessHttpResponseMessage(HttpResponse, XmlResponse));
    end;


    local procedure GetQueryString(Parameter: Dictionary of [enum "jdi BingMaps ListTimeZones Parameter", Text]): Text
    var
        ParamKeys: List of [Enum "jdi BingMaps ListTimeZones Parameter"];
        ListTimeZonesParameter: Enum "jdi BingMaps ListTimeZones Parameter";
        TxtBuilder: TextBuilder;
    begin
        if not Parameter.ContainsKey(ListTimeZonesParameter::"key") then
            Parameter.Add(ListTimeZonesParameter::"key", GetDefaultAPIKey());

        ParamKeys := Parameter.Keys;
        foreach ListTimeZonesParameter in ParamKeys do
            TxtBuilder.Append(GetEnumName(ListTimeZonesParameter) + '=' + Parameter.Get(ListTimeZonesParameter) + '&');

        exit(TxtBuilder.ToText().TrimEnd('&'));
    end;

    local procedure GetEnumName(Parameter: Enum "jdi BingMaps ListTimeZones Parameter"): Text
    var
        OrdinalValue: Integer;
        Index: Integer;
    begin
        OrdinalValue := Parameter.AsInteger();
        Index := Parameter.Ordinals.IndexOf(OrdinalValue);
        exit(Parameter.Names.Get(Index));
    end;

    local procedure InvokeWebRequest(Url: Text; var Response: HttpResponseMessage): Boolean
    var
        Client: HttpClient;
    begin
        exit(Client.Get(Url, Response));
    end;

    local procedure ProcessHttpResponseMessage(Response: HttpResponseMessage; var ResponseJObject: JsonObject): Boolean;
    var
        Result: Text;
    begin
        Clear(ResponseJObject);
        if (Response.IsSuccessStatusCode()) then begin
            Response.Content().ReadAs(Result);
            exit(ResponseJObject.ReadFrom(Result));
        end;
    end;

    local procedure ProcessHttpResponseMessage(Response: HttpResponseMessage; var ResponseXml: XmlDocument): Boolean;
    var
        InStr: InStream;
    begin
        Clear(ResponseXml);
        if (Response.IsSuccessStatusCode()) then begin
            Response.Content().ReadAs(InStr);

            exit(XmlDocument.ReadFrom(InStr, ResponseXml));
        end;
    end;

    local procedure BuildBaseUrl(Parameter: Dictionary of [enum "jdi BingMaps ListTimeZones Parameter", Text]) BaseUrl: Text
    var
        ListTimeZonesParamenter: Enum "jdi BingMaps ListTimeZones Parameter";

        BaseUriLbl: Label 'https://dev.virtualearth.net/REST/v1/TimeZone/', Locked = true;
        BaseUriListtLbl: Label 'https://dev.virtualearth.net/REST/v1/TimeZone/List', Locked = true;
    begin
        BaseUrl := BaseUriLbl;

        if Parameter.ContainsKey(ListTimeZonesParamenter::timezonestandard) then
            BaseUrl := BaseUriListtLbl;
    end;

    local procedure GetDefaultAPIKey(): Text
    var
        BingMapsSetup: Record "jdi BingMaps Setup";
    begin
        if BingMapsSetup.Get() then
            exit(BingMapsSetup.GetDefaultAPIKey());
    end;

}