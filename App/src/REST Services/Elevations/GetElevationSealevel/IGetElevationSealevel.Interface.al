interface "jdi BingMaps IGetElevationSealevel"
{
    procedure GetElevationSealevel(Parameter: Dictionary of [Enum "jdi BingMaps GetElevationSealevel Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure GetElevationSealevel(Parameter: Dictionary of [Enum "jdi BingMaps GetElevationSealevel Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    procedure GetElevationSealevel(Parameter: Dictionary of [Enum "jdi BingMaps GetElevationSealevel Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
}