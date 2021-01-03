interface "jdi BingMaps ICalculateRoute"
{
    procedure CalculateRoute(Parameter: Dictionary of [Enum "jdi BingMaps Parameter CalculateRoute", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure CalculateRoute(Parameter: Dictionary of [Enum "jdi BingMaps Parameter CalculateRoute", Text]; var JsonResponse: JsonObject): Boolean;
    procedure CalculateRoute(Parameter: Dictionary of [Enum "jdi BingMaps Parameter CalculateRoute", Text]; var XmlResponse: XmlDocument): Boolean;
}