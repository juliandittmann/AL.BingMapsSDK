interface "jdi BingMaps ILocationRecognition"
{
    procedure LocationRecognition(Parameter: Dictionary of [Enum "jdi BingMaps Parameter LocationRecognition", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure LocationRecognition(Parameter: Dictionary of [Enum "jdi BingMaps Parameter LocationRecognition", Text]; var JsonResponse: JsonObject): Boolean;
    procedure LocationRecognition(Parameter: Dictionary of [Enum "jdi BingMaps Parameter LocationRecognition", Text]; var XmlResponse: XmlDocument): Boolean;
}