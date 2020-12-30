codeunit 50027 "jdi BingMaps CalculateRoute v1" implements "jdi BingMaps ICalculateRoute"
{
    Access = Internal;
    procedure CalculateRoute(Parameter: Dictionary of [enum "jdi BingMaps CalculateRoute Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
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

    procedure CalculateRoute(Parameter: Dictionary of [enum "jdi BingMaps CalculateRoute Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
    begin
        CalculateRoute(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, JsonResponse));
    end;

    procedure CalculateRoute(Parameter: Dictionary of [enum "jdi BingMaps CalculateRoute Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
        CalculateRouteParameter: Enum "jdi BingMaps CalculateRoute Parameter";
    begin
        if not Parameter.ContainsKey(CalculateRouteParameter::output) then
            Parameter.Add(CalculateRouteParameter::output, 'xml');

        CalculateRoute(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, XmlResponse));
    end;



    local procedure BuildBaseUrl(var Parameter: Dictionary of [enum "jdi BingMaps CalculateRoute Parameter", Text]) BaseUrl: Text
    var
        CalculateRouteParameter: Enum "jdi BingMaps CalculateRoute Parameter";

        BaseUriLbl: Label 'http://dev.virtualearth.net/REST/V1/Routes', Locked = true;
    begin
        BaseUrl := BaseUriLbl;
        if Parameter.ContainsKey(CalculateRouteParameter::travelMode) then begin
            BaseUrl += '/' + Parameter.Get(CalculateRouteParameter::travelMode);
            Parameter.Remove(CalculateRouteParameter::travelMode);
        end;
    end;

    local procedure GetQueryString(Parameter: Dictionary of [enum "jdi BingMaps CalculateRoute Parameter", Text]): Text
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        ParamKeys: List of [Enum "jdi BingMaps CalculateRoute Parameter"];
        CalculateRouteParameter: Enum "jdi BingMaps CalculateRoute Parameter";
        TxtBuilder: TextBuilder;
    begin
        if not Parameter.ContainsKey(CalculateRouteParameter::"key") then
            Parameter.Add(CalculateRouteParameter::"key", RESTHelper.GetDefaultAPIKey());

        ParamKeys := Parameter.Keys;
        foreach CalculateRouteParameter in ParamKeys do
            TxtBuilder.Append(GetEnumName(CalculateRouteParameter) + '=' + Parameter.Get(CalculateRouteParameter) + '&');

        exit(TxtBuilder.ToText().TrimEnd('&'));
    end;

    local procedure GetEnumName(Parameter: Enum "jdi BingMaps CalculateRoute Parameter"): Text
    var
        OrdinalValue: Integer;
        Index: Integer;
    begin
        OrdinalValue := Parameter.AsInteger();
        Index := Parameter.Ordinals.IndexOf(OrdinalValue);
        exit(Parameter.Names.Get(Index));
    end;
}