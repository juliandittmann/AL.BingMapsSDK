interface "jdi BingMaps IFindLocationByQuery"
{
    procedure FindLocationByQuery(Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByQuery", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure FindLocationByQuery(Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByQuery", Text]; var JsonResponse: JsonObject): Boolean;
    procedure FindLocationByQuery(Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByQuery", Text]; var XmlResponse: XmlDocument): Boolean;
}