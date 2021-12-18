codeunit 50011 "jdi BingMaps FindTimeZone v1" implements "jdi BingMaps IFindTimeZone"
{
    Access = Internal;
    procedure FindTimeZone(Parameter: Dictionary of [enum "jdi BingMaps Parameter FindTimeZone", Text]; var HttpResponse: HttpResponseMessage): Boolean;
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

    procedure FindTimeZone(Parameter: Dictionary of [enum "jdi BingMaps Parameter FindTimeZone", Text]; var JsonResponse: JsonObject): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
    begin
        FindTimeZone(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, JsonResponse));
    end;

    procedure FindTimeZone(Parameter: Dictionary of [enum "jdi BingMaps Parameter FindTimeZone", Text]; var XmlResponse: XmlDocument): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
        FindTimeZoneParam: Enum "jdi BingMaps Parameter FindTimeZone";
    begin
        if not Parameter.ContainsKey(FindTimeZoneParam::output) then
            Parameter.Add(FindTimeZoneParam::output, 'xml');

        FindTimeZone(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, XmlResponse));
    end;

    local procedure GetQueryString(Parameter: Dictionary of [enum "jdi BingMaps Parameter FindTimeZone", Text]): Text
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter FindTimeZone"];
        FindTimeZoneParameter: Enum "jdi BingMaps Parameter FindTimeZone";
        TxtBuilder: TextBuilder;
    begin
        ParamKeys := Parameter.Keys;
        foreach FindTimeZoneParameter in ParamKeys do
            TxtBuilder.Append(GetEnumName(FindTimeZoneParameter) + '=' + Parameter.Get(FindTimeZoneParameter) + '&');

        exit(TxtBuilder.ToText().TrimEnd('&'));
    end;

    local procedure GetEnumName(FindTimeZoneParameter: Enum "jdi BingMaps Parameter FindTimeZone"): Text
    var
        OrdinalValue: Integer;
        Index: Integer;
    begin
        OrdinalValue := FindTimeZoneParameter.AsInteger();
        Index := FindTimeZoneParameter.Ordinals.IndexOf(OrdinalValue);
        exit(FindTimeZoneParameter.Names.Get(Index));
    end;

    local procedure BuildBaseUrl(var Parameter: Dictionary of [enum "jdi BingMaps Parameter FindTimeZone", Text]) BaseUrl: Text
    var
        FindTimeZoneParamenter: Enum "jdi BingMaps Parameter FindTimeZone";

        BaseUriLbl: Label 'https://dev.virtualearth.net/REST/v1/TimeZone/', Locked = true;
        BaseUriPointLbl: Label 'https://dev.virtualearth.net/REST/v1/TimeZone/%1', Locked = true;
    begin
        BaseUrl := BaseUriLbl;

        if Parameter.ContainsKey(FindTimeZoneParamenter::point) then begin
            BaseUrl := StrSubstNo(BaseUriPointLbl, Parameter.Get(FindTimeZoneParamenter::point));
            Parameter.Remove(FindTimeZoneParamenter::point);
        end;
    end;
}