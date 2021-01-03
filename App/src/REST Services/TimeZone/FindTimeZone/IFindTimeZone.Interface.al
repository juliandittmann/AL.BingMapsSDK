interface "jdi BingMaps IFindTimeZone"
{
    procedure FindTimeZone(Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindTimeZone", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure FindTimeZone(Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindTimeZone", Text]; var JsonResponse: JsonObject): Boolean;
    procedure FindTimeZone(Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindTimeZone", Text]; var XmlResponse: XmlDocument): Boolean;
}