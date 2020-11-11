interface "jdi BingMaps ILocalSearch"
{
    procedure LocalSearch(Parameter: Dictionary of [Enum "jdi BingMaps LocalSearch Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure LocalSearch(Parameter: Dictionary of [Enum "jdi BingMaps LocalSearch Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    procedure LocalSearch(Parameter: Dictionary of [Enum "jdi BingMaps LocalSearch Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
}