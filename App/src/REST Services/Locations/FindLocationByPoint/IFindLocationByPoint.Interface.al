interface "jdi BingMaps IFindLocationByPoint"
{
    procedure FindLocationByPoint(Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByPoint", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure FindLocationByPoint(Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByPoint", Text]; var JsonResponse: JsonObject): Boolean;
    procedure FindLocationByPoint(Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByPoint", Text]; var XmlResponse: XmlDocument): Boolean;
}