interface "jdi BingMaps IConvertTimeZone"
{
    procedure ConvertTimeZone(Parameter: Dictionary of [Enum "jdi BingMaps Parameter ConvertTimeZone", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure ConvertTimeZone(Parameter: Dictionary of [Enum "jdi BingMaps Parameter ConvertTimeZone", Text]; var JsonResponse: JsonObject): Boolean;
    procedure ConvertTimeZone(Parameter: Dictionary of [Enum "jdi BingMaps Parameter ConvertTimeZone", Text]; var XmlResponse: XmlDocument): Boolean;
}