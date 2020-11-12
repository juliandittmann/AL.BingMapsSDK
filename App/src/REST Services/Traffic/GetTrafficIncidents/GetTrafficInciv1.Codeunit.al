codeunit 50021 "jdi BingMaps GetTrafficInci v1" implements "jdi BingMaps IGetTrafficIncidents"
{
    procedure GetTrafficIncidents(Parameter: Dictionary of [enum "jdi BingMaps GetTrafficIncidents Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
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

    procedure GetTrafficIncidents(Parameter: Dictionary of [enum "jdi BingMaps GetTrafficIncidents Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
    begin
        GetTrafficIncidents(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, JsonResponse));
    end;

    procedure GetTrafficIncidents(Parameter: Dictionary of [enum "jdi BingMaps GetTrafficIncidents Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
        GetTrafficIncidentsParam: Enum "jdi BingMaps GetTrafficIncidents Parameter";
    begin
        if not Parameter.ContainsKey(GetTrafficIncidentsParam::output) then
            Parameter.Add(GetTrafficIncidentsParam::output, 'xml');

        GetTrafficIncidents(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, XmlResponse));
    end;

    local procedure GetQueryString(Parameter: Dictionary of [enum "jdi BingMaps GetTrafficIncidents Parameter", Text]): Text
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        ParamKeys: List of [Enum "jdi BingMaps GetTrafficIncidents Parameter"];
        GetTrafficIncidentsParameter: Enum "jdi BingMaps GetTrafficIncidents Parameter";
        TxtBuilder: TextBuilder;
    begin
        if not Parameter.ContainsKey(GetTrafficIncidentsParameter::"key") then
            Parameter.Add(GetTrafficIncidentsParameter::"key", RESTHelper.GetDefaultAPIKey());

        ParamKeys := Parameter.Keys;
        foreach GetTrafficIncidentsParameter in ParamKeys do
            TxtBuilder.Append(GetEnumName(GetTrafficIncidentsParameter) + '=' + Parameter.Get(GetTrafficIncidentsParameter) + '&');

        exit(TxtBuilder.ToText().TrimEnd('&'));
    end;

    local procedure GetEnumName(GetTrafficIncidentsParameter: Enum "jdi BingMaps GetTrafficIncidents Parameter"): Text
    var
        OrdinalValue: Integer;
        Index: Integer;
    begin
        OrdinalValue := GetTrafficIncidentsParameter.AsInteger();
        Index := GetTrafficIncidentsParameter.Ordinals.IndexOf(OrdinalValue);
        exit(GetTrafficIncidentsParameter.Names.Get(Index));
    end;


    local procedure BuildBaseUrl(var Parameter: Dictionary of [enum "jdi BingMaps GetTrafficIncidents Parameter", Text]) BaseUrl: Text
    var
        GetTrafficIncidentsParamenter: Enum "jdi BingMaps GetTrafficIncidents Parameter";

        BaseUriLbl: Label 'https://dev.virtualearth.net/REST/v1/Traffic/Incidents', Locked = true;
    begin
        BaseUrl := BaseUriLbl;

        if Parameter.ContainsKey(GetTrafficIncidentsParamenter::mapArea) then begin
            BaseUrl := BaseUrl + '/' + Parameter.Get(GetTrafficIncidentsParamenter::mapArea);
            Parameter.Remove(GetTrafficIncidentsParamenter::mapArea);
        end;

        if Parameter.ContainsKey(GetTrafficIncidentsParamenter::includeLocationCodes) then begin
            BaseUrl := BaseUrl + '/' + Parameter.Get(GetTrafficIncidentsParamenter::includeLocationCodes);
            Parameter.Remove(GetTrafficIncidentsParamenter::includeLocationCodes);
        end;
    end;
}