interface "jdi BingMaps IGetElevationSealevel"
{
    procedure GetElevationSealevel(Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationSealevel", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure GetElevationSealevel(Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationSealevel", Text]; var JsonResponse: JsonObject): Boolean;
    procedure GetElevationSealevel(Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationSealevel", Text]; var XmlResponse: XmlDocument): Boolean;
}