interface "jdi BingMaps IFindTimeZone"
{
    procedure FindTimeZone(Parameter: Dictionary of [Enum "jdi BingMaps FindTimeZone Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure FindTimeZone(Parameter: Dictionary of [Enum "jdi BingMaps FindTimeZone Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    procedure FindTimeZone(Parameter: Dictionary of [Enum "jdi BingMaps FindTimeZone Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
}