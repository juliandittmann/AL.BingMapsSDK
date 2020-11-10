codeunit 50011 "jdi BingMaps FindTimeZone v1" implements "jdi BingMaps IFindTimeZone"
{
    Access = Internal;
    procedure FindTimeZone(Parameter: Dictionary of [enum "jdi BingMaps FindTimeZone Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    var
        UriBuilder: Codeunit "Uri Builder";
        Uri: Codeunit Uri;
    begin
        UriBuilder.Init(BuildBaseUrl(Parameter));
        UriBuilder.SetQuery(GetQueryString(Parameter));
        UriBuilder.GetUri(Uri);
        exit(InvokeWebRequest(Uri.GetAbsoluteUri(), HttpResponse));
    end;

    procedure FindTimeZone(Parameter: Dictionary of [enum "jdi BingMaps FindTimeZone Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    var
        HttpResponse: HttpResponseMessage;
    begin
        FindTimeZone(Parameter, HttpResponse);
        exit(ProcessHttpResponseMessage(HttpResponse, JsonResponse));
    end;

    procedure FindTimeZone(Parameter: Dictionary of [enum "jdi BingMaps FindTimeZone Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
    var
        HttpResponse: HttpResponseMessage;
        FindTimeZoneParam: Enum "jdi BingMaps FindTimeZone Parameter";
    begin
        if not Parameter.ContainsKey(FindTimeZoneParam::output) then
            Parameter.Add(FindTimeZoneParam::output, 'xml');

        FindTimeZone(Parameter, HttpResponse);
        exit(ProcessHttpResponseMessage(HttpResponse, XmlResponse));
    end;

    local procedure GetQueryString(Parameter: Dictionary of [enum "jdi BingMaps FindTimeZone Parameter", Text]): Text
    var
        ParamKeys: List of [Enum "jdi BingMaps FindTimeZone Parameter"];
        FindTimeZoneParameter: Enum "jdi BingMaps FindTimeZone Parameter";
        TxtBuilder: TextBuilder;
    begin
        if not Parameter.ContainsKey(FindTimeZoneParameter::"key") then
            Parameter.Add(FindTimeZoneParameter::"key", GetDefaultAPIKey());

        ParamKeys := Parameter.Keys;
        foreach FindTimeZoneParameter in ParamKeys do
            TxtBuilder.Append(GetEnumName(FindTimeZoneParameter) + '=' + Parameter.Get(FindTimeZoneParameter) + '&');

        exit(TxtBuilder.ToText().TrimEnd('&'));
    end;

    local procedure GetEnumName(FindTimeZoneParameter: Enum "jdi BingMaps FindTimeZone Parameter"): Text
    var
        OrdinalValue: Integer;
        Index: Integer;
    begin
        OrdinalValue := FindTimeZoneParameter.AsInteger();
        Index := FindTimeZoneParameter.Ordinals.IndexOf(OrdinalValue);
        exit(FindTimeZoneParameter.Names.Get(Index));
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

    local procedure BuildBaseUrl(Parameter: Dictionary of [enum "jdi BingMaps FindTimeZone Parameter", Text]) BaseUrl: Text
    var
        FindTimeZoneParamenter: Enum "jdi BingMaps FindTimeZone Parameter";

        BaseUriLbl: Label 'https://dev.virtualearth.net/REST/v1/TimeZone/', Locked = true;
        BaseUriPointLbl: Label 'https://dev.virtualearth.net/REST/v1/TimeZone/%1', Locked = true;
    begin
        BaseUrl := BaseUriLbl;

        if Parameter.ContainsKey(FindTimeZoneParamenter::point) then begin
            BaseUrl := StrSubstNo(BaseUriPointLbl, Parameter.Get(FindTimeZoneParamenter::point));
            Parameter.Remove(FindTimeZoneParamenter::point);
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