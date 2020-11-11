interface "jdi BingMaps IFindLocationByQuery"
{
    procedure FindLocationByQuery(Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByQuery Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure FindLocationByQuery(Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByQuery Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    procedure FindLocationByQuery(Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByQuery Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
}