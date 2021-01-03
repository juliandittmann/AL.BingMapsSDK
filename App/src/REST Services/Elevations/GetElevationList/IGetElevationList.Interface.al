interface "jdi BingMaps IGetElevationList"
{
    procedure GetElevationList(Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationList", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure GetElevationList(Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationList", Text]; var JsonResponse: JsonObject): Boolean;
    procedure GetElevationList(Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationList", Text]; var XmlResponse: XmlDocument): Boolean;
}