interface "jdi BingMaps IAutosuggest"
{
    procedure Autosuggest(Parameter: Dictionary of [Enum "jdi BingMaps Parameter Autosuggest", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure Autosuggest(Parameter: Dictionary of [Enum "jdi BingMaps Parameter Autosuggest", Text]; var JsonResponse: JsonObject): Boolean;
    procedure Autosuggest(Parameter: Dictionary of [Enum "jdi BingMaps Parameter Autosuggest", Text]; var XmlResponse: XmlDocument): Boolean;
}