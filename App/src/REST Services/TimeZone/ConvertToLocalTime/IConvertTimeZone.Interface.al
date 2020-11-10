interface "jdi BingMaps IConvertTimeZone"
{
    procedure ConvertTimeZone(Parameter: Dictionary of [Enum "jdi BingMaps ConvertTimeZone Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure ConvertTimeZone(Parameter: Dictionary of [Enum "jdi BingMaps ConvertTimeZone Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    procedure ConvertTimeZone(Parameter: Dictionary of [Enum "jdi BingMaps ConvertTimeZone Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
}