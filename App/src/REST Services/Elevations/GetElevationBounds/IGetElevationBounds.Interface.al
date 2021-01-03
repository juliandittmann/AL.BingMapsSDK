interface "jdi BingMaps IGetElevationBounds"
{
    procedure GetElevationBounds(Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationBounds", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure GetElevationBounds(Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationBounds", Text]; var JsonResponse: JsonObject): Boolean;
    procedure GetElevationBounds(Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationBounds", Text]; var XmlResponse: XmlDocument): Boolean;
}