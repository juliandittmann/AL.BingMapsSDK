codeunit 50005 "jdi BingMaps API Routes"
{
    Access = Public;

    procedure CalculateRoute(APIVersion: Enum "jdi BingMaps API CalculateRoute"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter CalculateRoute", Text]; var JsonResponse: JsonObject): Boolean
    var
        ICalculateRoute: Interface "jdi BingMaps ICalculateRoute";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter CalculateRoute", Text];
    begin
        CopyParameter(Parameter, localParameter);
        ICalculateRoute := APIVersion;
        ICalculateRoute.CalculateRoute(localParameter, JsonResponse);
    end;

    procedure CalculateRoute(APIVersion: Enum "jdi BingMaps API CalculateRoute"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter CalculateRoute", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        ICalculateRoute: Interface "jdi BingMaps ICalculateRoute";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter CalculateRoute", Text];
    begin
        CopyParameter(Parameter, localParameter);
        ICalculateRoute := APIVersion;
        ICalculateRoute.CalculateRoute(localParameter, HttpResponse);
    end;

    procedure CalculateRoute(APIVersion: Enum "jdi BingMaps API CalculateRoute"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter CalculateRoute", Text]; var XmlResponse: XmlDocument): Boolean
    var
        ICalculateRoute: Interface "jdi BingMaps ICalculateRoute";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter CalculateRoute", Text];
    begin
        CopyParameter(Parameter, localParameter);
        ICalculateRoute := APIVersion;
        ICalculateRoute.CalculateRoute(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps Parameter CalculateRoute", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps Parameter CalculateRoute", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter CalculateRoute"];
        CalculateRouteParameter: Enum "jdi BingMaps Parameter CalculateRoute";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach CalculateRouteParameter in ParamKeys do
            ParameterCopy.Add(CalculateRouteParameter, Parameter.Get(CalculateRouteParameter));
    end;


    procedure CalculateTruckRoute(APIVersion: Enum "jdi BingMaps API CalculateTruckRoute"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter CalculateTruckRoute", Text]; var JsonResponse: JsonObject): Boolean
    var
        ICalculateTruckRoute: Interface "jdi BingMaps ICalculateTruckRoute";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter CalculateTruckRoute", Text];
    begin
        CopyParameter(Parameter, localParameter);
        ICalculateTruckRoute := APIVersion;
        ICalculateTruckRoute.CalculateTruckRoute(localParameter, JsonResponse);
    end;

    procedure CalculateTruckRoute(APIVersion: Enum "jdi BingMaps API CalculateTruckRoute"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter CalculateTruckRoute", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        ICalculateTruckRoute: Interface "jdi BingMaps ICalculateTruckRoute";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter CalculateTruckRoute", Text];
    begin
        CopyParameter(Parameter, localParameter);
        ICalculateTruckRoute := APIVersion;
        ICalculateTruckRoute.CalculateTruckRoute(localParameter, HttpResponse);
    end;

    procedure CalculateTruckRoute(APIVersion: Enum "jdi BingMaps API CalculateTruckRoute"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter CalculateTruckRoute", Text]; var XmlResponse: XmlDocument): Boolean
    var
        ICalculateTruckRoute: Interface "jdi BingMaps ICalculateTruckRoute";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter CalculateTruckRoute", Text];
    begin
        CopyParameter(Parameter, localParameter);
        ICalculateTruckRoute := APIVersion;
        ICalculateTruckRoute.CalculateTruckRoute(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps Parameter CalculateTruckRoute", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps Parameter CalculateTruckRoute", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter CalculateTruckRoute"];
        CalculateTruckRouteParameter: Enum "jdi BingMaps Parameter CalculateTruckRoute";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach CalculateTruckRouteParameter in ParamKeys do
            ParameterCopy.Add(CalculateTruckRouteParameter, Parameter.Get(CalculateTruckRouteParameter));
    end;
}