interface "jdi BingMaps IGetElevationList"
{
    procedure GetElevationList(Parameter: Dictionary of [Enum "jdi BingMaps GetElevationList Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure GetElevationList(Parameter: Dictionary of [Enum "jdi BingMaps GetElevationList Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    procedure GetElevationList(Parameter: Dictionary of [Enum "jdi BingMaps GetElevationList Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
}