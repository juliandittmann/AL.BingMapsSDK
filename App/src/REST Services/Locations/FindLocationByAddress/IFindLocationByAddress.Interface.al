interface "jdi BingMaps IFindLocationByAddress"
{
    procedure FindLocationByAddress(Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByAddress Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure FindLocationByAddress(Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByAddress Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    procedure FindLocationByAddress(Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByAddress Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
}