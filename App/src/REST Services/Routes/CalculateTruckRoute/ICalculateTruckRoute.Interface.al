interface "jdi BingMaps ICalculateTruckRoute"
{
    procedure CalculateTruckRoute(Parameter: Dictionary of [Enum "jdi BingMaps CalculateTruckRoute Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure CalculateTruckRoute(Parameter: Dictionary of [Enum "jdi BingMaps CalculateTruckRoute Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    procedure CalculateTruckRoute(Parameter: Dictionary of [Enum "jdi BingMaps CalculateTruckRoute Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
}