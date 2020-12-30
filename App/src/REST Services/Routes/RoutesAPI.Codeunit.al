codeunit 50005 "jdi BingMaps Routes API"
{
    procedure CalculateRoute(Parameter: Dictionary of [Enum "jdi BingMaps CalculateRoute Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        ICalculateRoute: Interface "jdi BingMaps ICalculateRoute";
        localParameter: Dictionary of [Enum "jdi BingMaps CalculateRoute Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        ICalculateRoute := IVersion.CalculateRoute();
        ICalculateRoute.CalculateRoute(localParameter, JsonResponse);
    end;

    procedure CalculateRoute(Parameter: Dictionary of [Enum "jdi BingMaps CalculateRoute Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        ICalculateRoute: Interface "jdi BingMaps ICalculateRoute";

        localParameter: Dictionary of [Enum "jdi BingMaps CalculateRoute Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        ICalculateRoute := IVersion.CalculateRoute();
        ICalculateRoute.CalculateRoute(localParameter, HttpResponse);
    end;

    procedure CalculateRoute(Parameter: Dictionary of [Enum "jdi BingMaps CalculateRoute Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        ICalculateRoute: Interface "jdi BingMaps ICalculateRoute";

        localParameter: Dictionary of [Enum "jdi BingMaps CalculateRoute Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        ICalculateRoute := IVersion.CalculateRoute();
        ICalculateRoute.CalculateRoute(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps CalculateRoute Parameter", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps CalculateRoute Parameter", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps CalculateRoute Parameter"];
        CalculateRouteParameter: Enum "jdi BingMaps CalculateRoute Parameter";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach CalculateRouteParameter in ParamKeys do
            ParameterCopy.Add(CalculateRouteParameter, Parameter.Get(CalculateRouteParameter));
    end;


    procedure CalculateTruckRoute(Parameter: Dictionary of [Enum "jdi BingMaps CalculateTruckRoute Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        ICalculateTruckRoute: Interface "jdi BingMaps ICalculateTruckRoute";
        localParameter: Dictionary of [Enum "jdi BingMaps CalculateTruckRoute Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        ICalculateTruckRoute := IVersion.CalculateTruckRoute();
        ICalculateTruckRoute.CalculateTruckRoute(localParameter, JsonResponse);
    end;

    procedure CalculateTruckRoute(Parameter: Dictionary of [Enum "jdi BingMaps CalculateTruckRoute Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        ICalculateTruckRoute: Interface "jdi BingMaps ICalculateTruckRoute";

        localParameter: Dictionary of [Enum "jdi BingMaps CalculateTruckRoute Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        ICalculateTruckRoute := IVersion.CalculateTruckRoute();
        ICalculateTruckRoute.CalculateTruckRoute(localParameter, HttpResponse);
    end;

    procedure CalculateTruckRoute(Parameter: Dictionary of [Enum "jdi BingMaps CalculateTruckRoute Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        ICalculateTruckRoute: Interface "jdi BingMaps ICalculateTruckRoute";

        localParameter: Dictionary of [Enum "jdi BingMaps CalculateTruckRoute Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        ICalculateTruckRoute := IVersion.CalculateTruckRoute();
        ICalculateTruckRoute.CalculateTruckRoute(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps CalculateTruckRoute Parameter", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps CalculateTruckRoute Parameter", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps CalculateTruckRoute Parameter"];
        CalculateTruckRouteParameter: Enum "jdi BingMaps CalculateTruckRoute Parameter";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach CalculateTruckRouteParameter in ParamKeys do
            ParameterCopy.Add(CalculateTruckRouteParameter, Parameter.Get(CalculateTruckRouteParameter));
    end;








    local procedure GetIVersion(var IVersion: Interface "jdi BingMaps IVersion") //TODO: Does not belong here
    var
        BingMapsSDKSetup: Record "jdi BingMaps Setup";
    begin
        BingMapsSDKSetup.Get();
        IVersion := BingMapsSDKSetup."API Version";
    end;
}