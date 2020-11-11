interface "jdi BingMaps ILocationRecognition"
{
    procedure LocationRecognition(Parameter: Dictionary of [Enum "jdi BingMaps LocationRecognition Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure LocationRecognition(Parameter: Dictionary of [Enum "jdi BingMaps LocationRecognition Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    procedure LocationRecognition(Parameter: Dictionary of [Enum "jdi BingMaps LocationRecognition Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
}