codeunit 50022 "jdi BingMaps GetElev. List v1" implements "jdi BingMaps IGetElevationList"
{
    procedure GetElevationList(Parameter: Dictionary of [enum "jdi BingMaps GetElevationList Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        UriBuilder: Codeunit "Uri Builder";
        Uri: Codeunit Uri;

        BaseUriLbl: Label 'https://dev.virtualearth.net/REST/v1/Elevation/List', Locked = true;
    begin
        UriBuilder.Init(BaseUriLbl);
        UriBuilder.SetQuery(GetQueryString(Parameter));
        UriBuilder.GetUri(Uri);
        exit(RESTHelper.InvokeWebRequest(Uri.GetAbsoluteUri(), HttpResponse));
    end;

    procedure GetElevationList(Parameter: Dictionary of [enum "jdi BingMaps GetElevationList Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
    begin
        GetElevationList(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, JsonResponse));
    end;

    procedure GetElevationList(Parameter: Dictionary of [enum "jdi BingMaps GetElevationList Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
        GetElevationListParameter: Enum "jdi BingMaps GetElevationList Parameter";
    begin
        if not Parameter.ContainsKey(GetElevationListParameter::output) then
            Parameter.Add(GetElevationListParameter::output, 'xml');

        GetElevationList(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, XmlResponse));
    end;


    local procedure GetQueryString(Parameter: Dictionary of [enum "jdi BingMaps GetElevationList Parameter", Text]): Text
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        ParamKeys: List of [Enum "jdi BingMaps GetElevationList Parameter"];
        GetElevationListParameter: Enum "jdi BingMaps GetElevationList Parameter";
        TxtBuilder: TextBuilder;
    begin
        if not Parameter.ContainsKey(GetElevationListParameter::"key") then
            Parameter.Add(GetElevationListParameter::"key", RESTHelper.GetDefaultAPIKey());

        ParamKeys := Parameter.Keys;
        foreach GetElevationListParameter in ParamKeys do
            TxtBuilder.Append(GetEnumName(GetElevationListParameter) + '=' + Parameter.Get(GetElevationListParameter) + '&');

        exit(TxtBuilder.ToText().TrimEnd('&'));
    end;

    local procedure GetEnumName(Parameter: Enum "jdi BingMaps GetElevationList Parameter"): Text
    var
        OrdinalValue: Integer;
        Index: Integer;
    begin
        OrdinalValue := Parameter.AsInteger();
        Index := Parameter.Ordinals.IndexOf(OrdinalValue);
        exit(Parameter.Names.Get(Index));
    end;

}