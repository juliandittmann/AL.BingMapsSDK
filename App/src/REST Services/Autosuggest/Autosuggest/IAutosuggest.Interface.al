interface "jdi BingMaps IAutosuggest"
{
    procedure Autosuggest(Parameter: Dictionary of [Enum "jdi BingMaps Autosuggest Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure Autosuggest(Parameter: Dictionary of [Enum "jdi BingMaps Autosuggest Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    procedure Autosuggest(Parameter: Dictionary of [Enum "jdi BingMaps Autosuggest Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
}