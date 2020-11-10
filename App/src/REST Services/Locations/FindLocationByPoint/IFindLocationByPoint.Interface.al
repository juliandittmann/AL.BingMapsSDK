interface "jdi BingMaps IFindLocationByPoint"
{
    procedure FindLocationByPoint(Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByPoint Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure FindLocationByPoint(Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByPoint Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    procedure FindLocationByPoint(Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByPoint Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
}