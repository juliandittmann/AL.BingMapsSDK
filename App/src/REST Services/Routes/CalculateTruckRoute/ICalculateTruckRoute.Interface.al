interface "jdi BingMaps ICalculateTruckRoute"
{
    procedure CalculateTruckRoute(Parameter: Dictionary of [Enum "jdi BingMaps Parameter CalculateTruckRoute", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure CalculateTruckRoute(Parameter: Dictionary of [Enum "jdi BingMaps Parameter CalculateTruckRoute", Text]; var JsonResponse: JsonObject): Boolean;
    procedure CalculateTruckRoute(Parameter: Dictionary of [Enum "jdi BingMaps Parameter CalculateTruckRoute", Text]; var XmlResponse: XmlDocument): Boolean;
}