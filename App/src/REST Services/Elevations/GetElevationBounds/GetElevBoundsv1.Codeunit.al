codeunit 50023 "jdi BingMaps GetElev.Bounds v1" implements "jdi BingMaps IGetElevationBounds"
{
    procedure GetElevationBounds(Parameter: Dictionary of [enum "jdi BingMaps GetElevationBounds Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        UriBuilder: Codeunit "Uri Builder";
        Uri: Codeunit Uri;

        BaseUriLbl: Label 'https://dev.virtualearth.net/REST/v1/Elevation/Bounds', Locked = true;
    begin
        UriBuilder.Init(BaseUriLbl);
        UriBuilder.SetQuery(GetQueryString(Parameter));
        UriBuilder.GetUri(Uri);
        exit(RESTHelper.InvokeWebRequest(Uri.GetAbsoluteUri(), HttpResponse));
    end;

    procedure GetElevationBounds(Parameter: Dictionary of [enum "jdi BingMaps GetElevationBounds Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
    begin
        GetElevationBounds(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, JsonResponse));
    end;

    procedure GetElevationBounds(Parameter: Dictionary of [enum "jdi BingMaps GetElevationBounds Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
        GetElevationBoundsParameter: Enum "jdi BingMaps GetElevationBounds Parameter";
    begin
        if not Parameter.ContainsKey(GetElevationBoundsParameter::output) then
            Parameter.Add(GetElevationBoundsParameter::output, 'xml');

        GetElevationBounds(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, XmlResponse));
    end;


    local procedure GetQueryString(Parameter: Dictionary of [enum "jdi BingMaps GetElevationBounds Parameter", Text]): Text
    var
        ParamKeys: List of [Enum "jdi BingMaps GetElevationBounds Parameter"];
        GetElevationBoundsParameter: Enum "jdi BingMaps GetElevationBounds Parameter";
        TxtBuilder: TextBuilder;
    begin
        ParamKeys := Parameter.Keys;
        foreach GetElevationBoundsParameter in ParamKeys do
            TxtBuilder.Append(GetEnumName(GetElevationBoundsParameter) + '=' + Parameter.Get(GetElevationBoundsParameter) + '&');

        exit(TxtBuilder.ToText().TrimEnd('&'));
    end;

    local procedure GetEnumName(Parameter: Enum "jdi BingMaps GetElevationBounds Parameter"): Text
    var
        OrdinalValue: Integer;
        Index: Integer;
    begin
        OrdinalValue := Parameter.AsInteger();
        Index := Parameter.Ordinals.IndexOf(OrdinalValue);
        exit(Parameter.Names.Get(Index));
    end;

}