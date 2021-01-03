interface "jdi BingMaps IGetElevationPolyline"
{
    procedure GetElevationPolyline(Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationPolyline", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure GetElevationPolyline(Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationPolyline", Text]; var JsonResponse: JsonObject): Boolean;
    procedure GetElevationPolyline(Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationPolyline", Text]; var XmlResponse: XmlDocument): Boolean;
}