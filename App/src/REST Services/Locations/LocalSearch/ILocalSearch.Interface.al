interface "jdi BingMaps ILocalSearch"
{
    procedure LocalSearch(Parameter: Dictionary of [Enum "jdi BingMaps Parameter LocalSearch", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure LocalSearch(Parameter: Dictionary of [Enum "jdi BingMaps Parameter LocalSearch", Text]; var JsonResponse: JsonObject): Boolean;
    procedure LocalSearch(Parameter: Dictionary of [Enum "jdi BingMaps Parameter LocalSearch", Text]; var XmlResponse: XmlDocument): Boolean;
}