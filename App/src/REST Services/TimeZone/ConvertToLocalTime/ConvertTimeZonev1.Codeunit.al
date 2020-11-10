codeunit 50012 "jdi BingMaps ConvertTimeZonev1" implements "jdi BingMaps IConvertTimeZone"
{
    procedure ConvertTimeZone(Parameter: Dictionary of [enum "jdi BingMaps ConvertTimeZone Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    var
        UriBuilder: Codeunit "Uri Builder";
        Uri: Codeunit Uri;

        BaseUriLbl: Label 'https://dev.virtualearth.net/REST/v1/TimeZone/Convert/', Locked = true;
    begin
        UriBuilder.Init(BaseUriLbl);
        UriBuilder.SetQuery(GetQueryString(Parameter));
        UriBuilder.GetUri(Uri);
        exit(InvokeWebRequest(Uri.GetAbsoluteUri(), HttpResponse));
    end;

    procedure ConvertTimeZone(Parameter: Dictionary of [enum "jdi BingMaps ConvertTimeZone Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    var
        HttpResponse: HttpResponseMessage;
    begin
        ConvertTimeZone(Parameter, HttpResponse);
        exit(ProcessHttpResponseMessage(HttpResponse, JsonResponse));
    end;

    procedure ConvertTimeZone(Parameter: Dictionary of [enum "jdi BingMaps ConvertTimeZone Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
    var
        HttpResponse: HttpResponseMessage;
        ConvertTimeZoneParameter: Enum "jdi BingMaps ConvertTimeZone Parameter";
    begin
        if not Parameter.ContainsKey(ConvertTimeZoneParameter::output) then
            Parameter.Add(ConvertTimeZoneParameter::output, 'xml');

        ConvertTimeZone(Parameter, HttpResponse);
        exit(ProcessHttpResponseMessage(HttpResponse, XmlResponse));
    end;


    local procedure GetQueryString(Parameter: Dictionary of [enum "jdi BingMaps ConvertTimeZone Parameter", Text]): Text
    var
        ParamKeys: List of [Enum "jdi BingMaps ConvertTimeZone Parameter"];
        ConvertTimeZoneParameter: Enum "jdi BingMaps ConvertTimeZone Parameter";
        TxtBuilder: TextBuilder;
    begin
        if not Parameter.ContainsKey(ConvertTimeZoneParameter::"key") then
            Parameter.Add(ConvertTimeZoneParameter::"key", GetDefaultAPIKey());

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


    local procedure GetDefaultAPIKey(): Text
    var
        BingMapsSetup: Record "jdi BingMaps Setup";
    begin
        if BingMapsSetup.Get() then
            exit(BingMapsSetup.GetDefaultAPIKey());
    end;
}