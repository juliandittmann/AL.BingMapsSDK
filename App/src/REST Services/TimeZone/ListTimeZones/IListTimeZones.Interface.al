interface "jdi BingMaps IListTimeZones"
{
    procedure ListTimeZones(Parameter: Dictionary of [Enum "jdi BingMaps ListTimeZones Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure ListTimeZones(Parameter: Dictionary of [Enum "jdi BingMaps ListTimeZones Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    procedure ListTimeZones(Parameter: Dictionary of [Enum "jdi BingMaps ListTimeZones Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
}