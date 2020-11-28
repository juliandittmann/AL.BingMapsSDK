interface "jdi BingMaps ICalculateRoute"
{
    procedure CalculateRoute(Parameter: Dictionary of [Enum "jdi BingMaps CalculateRoute Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure CalculateRoute(Parameter: Dictionary of [Enum "jdi BingMaps CalculateRoute Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    procedure CalculateRoute(Parameter: Dictionary of [Enum "jdi BingMaps CalculateRoute Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
}