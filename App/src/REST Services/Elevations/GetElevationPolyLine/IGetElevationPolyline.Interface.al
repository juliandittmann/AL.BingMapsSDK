interface "jdi BingMaps IGetElevationPolyline"
{
    procedure GetElevationPolyline(Parameter: Dictionary of [Enum "jdi BingMaps GetElevationPolyline Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure GetElevationPolyline(Parameter: Dictionary of [Enum "jdi BingMaps GetElevationPolyline Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    procedure GetElevationPolyline(Parameter: Dictionary of [Enum "jdi BingMaps GetElevationPolyline Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
}