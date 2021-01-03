codeunit 50024 "jdi BingMaps GetElevPolylinev1" implements "jdi BingMaps IGetElevationPolyline"
{
    Access = Internal;
    procedure GetElevationPolyline(Parameter: Dictionary of [enum "jdi BingMaps Parameter GetElevationPolyline", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        UriBuilder: Codeunit "Uri Builder";
        Uri: Codeunit Uri;

        BaseUriLbl: Label 'https://dev.virtualearth.net/REST/v1/Elevation/Polyline', Locked = true;
    begin
        UriBuilder.Init(BaseUriLbl);
        UriBuilder.SetQuery(GetQueryString(Parameter));
        UriBuilder.GetUri(Uri);
        exit(RESTHelper.InvokeWebRequest(Uri.GetAbsoluteUri(), HttpResponse));
    end;

    procedure GetElevationPolyline(Parameter: Dictionary of [enum "jdi BingMaps Parameter GetElevationPolyline", Text]; var JsonResponse: JsonObject): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
    begin
        GetElevationPolyline(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, JsonResponse));
    end;

    procedure GetElevationPolyline(Parameter: Dictionary of [enum "jdi BingMaps Parameter GetElevationPolyline", Text]; var XmlResponse: XmlDocument): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
        GetElevationPolylineParameter: Enum "jdi BingMaps Parameter GetElevationPolyline";
    begin
        if not Parameter.ContainsKey(GetElevationPolylineParameter::output) then
            Parameter.Add(GetElevationPolylineParameter::output, 'xml');

        GetElevationPolyline(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, XmlResponse));
    end;


    local procedure GetQueryString(Parameter: Dictionary of [enum "jdi BingMaps Parameter GetElevationPolyline", Text]): Text
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter GetElevationPolyline"];
        GetElevationPolylineParameter: Enum "jdi BingMaps Parameter GetElevationPolyline";
        TxtBuilder: TextBuilder;
    begin
        ParamKeys := Parameter.Keys;
        foreach GetElevationPolylineParameter in ParamKeys do
            TxtBuilder.Append(GetEnumName(GetElevationPolylineParameter) + '=' + Parameter.Get(GetElevationPolylineParameter) + '&');

        exit(TxtBuilder.ToText().TrimEnd('&'));
    end;

    local procedure GetEnumName(Parameter: Enum "jdi BingMaps Parameter GetElevationPolyline"): Text
    var
        OrdinalValue: Integer;
        Index: Integer;
    begin
        OrdinalValue := Parameter.AsInteger();
        Index := Parameter.Ordinals.IndexOf(OrdinalValue);
        exit(Parameter.Names.Get(Index));
    end;

}