interface "jdi BingMaps IFindLocationByAddress"
{
    procedure FindLocationByAddress(Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByAddress", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure FindLocationByAddress(Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByAddress", Text]; var JsonResponse: JsonObject): Boolean;
    procedure FindLocationByAddress(Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByAddress", Text]; var XmlResponse: XmlDocument): Boolean;
}