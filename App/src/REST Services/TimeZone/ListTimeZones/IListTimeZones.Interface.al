interface "jdi BingMaps IListTimeZones"
{
    procedure ListTimeZones(Parameter: Dictionary of [Enum "jdi BingMaps Parameter ListTimeZones", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure ListTimeZones(Parameter: Dictionary of [Enum "jdi BingMaps Parameter ListTimeZones", Text]; var JsonResponse: JsonObject): Boolean;
    procedure ListTimeZones(Parameter: Dictionary of [Enum "jdi BingMaps Parameter ListTimeZones", Text]; var XmlResponse: XmlDocument): Boolean;
}