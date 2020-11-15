interface "jdi BingMaps IGetElevationBounds"
{
    procedure GetElevationBounds(Parameter: Dictionary of [Enum "jdi BingMaps GetElevationBounds Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure GetElevationBounds(Parameter: Dictionary of [Enum "jdi BingMaps GetElevationBounds Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    procedure GetElevationBounds(Parameter: Dictionary of [Enum "jdi BingMaps GetElevationBounds Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
}