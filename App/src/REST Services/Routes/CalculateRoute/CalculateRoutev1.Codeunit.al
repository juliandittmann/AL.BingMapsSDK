codeunit 50027 "jdi BingMaps CalculateRoute v1" implements "jdi BingMaps ICalculateRoute"
{
    Access = Internal;
    procedure CalculateRoute(Parameter: Dictionary of [enum "jdi BingMaps Parameter CalculateRoute", Text]; var HttpResponse: HttpResponseMessage): Boolean;
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

    procedure CalculateRoute(Parameter: Dictionary of [enum "jdi BingMaps Parameter CalculateRoute", Text]; var JsonResponse: JsonObject): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
    begin
        CalculateRoute(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, JsonResponse));
    end;

    procedure CalculateRoute(Parameter: Dictionary of [enum "jdi BingMaps Parameter CalculateRoute", Text]; var XmlResponse: XmlDocument): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
        CalculateRouteParameter: Enum "jdi BingMaps Parameter CalculateRoute";
    begin
        if not Parameter.ContainsKey(CalculateRouteParameter::output) then
            Parameter.Add(CalculateRouteParameter::output, 'xml');

        CalculateRoute(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, XmlResponse));
    end;



    local procedure BuildBaseUrl(var Parameter: Dictionary of [enum "jdi BingMaps Parameter CalculateRoute", Text]) BaseUrl: Text
    var
        CalculateRouteParameter: Enum "jdi BingMaps Parameter CalculateRoute";

        BaseUriLbl: Label 'https://dev.virtualearth.net/REST/V1/Routes', Locked = true;
    begin
        BaseUrl := BaseUriLbl;
        if Parameter.ContainsKey(CalculateRouteParameter::travelMode) then begin
            BaseUrl += '/' + Parameter.Get(CalculateRouteParameter::travelMode);
            Parameter.Remove(CalculateRouteParameter::travelMode);
        end;
    end;

    local procedure GetQueryString(Parameter: Dictionary of [enum "jdi BingMaps Parameter CalculateRoute", Text]): Text
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter CalculateRoute"];
        CalculateRouteParameter: Enum "jdi BingMaps Parameter CalculateRoute";
        TxtBuilder: TextBuilder;
    begin
        ParamKeys := Parameter.Keys;
        foreach CalculateRouteParameter in ParamKeys do
            TxtBuilder.Append(GetEnumName(CalculateRouteParameter) + '=' + Parameter.Get(CalculateRouteParameter) + '&');

        exit(TxtBuilder.ToText().TrimEnd('&'));
    end;

    local procedure GetEnumName(Parameter: Enum "jdi BingMaps Parameter CalculateRoute"): Text
    var
        OrdinalValue: Integer;
        Index: Integer;
    begin
        OrdinalValue := Parameter.AsInteger();
        Index := Parameter.Ordinals.IndexOf(OrdinalValue);
        exit(Parameter.Names.Get(Index));
    end;
}