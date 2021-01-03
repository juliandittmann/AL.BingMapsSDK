interface "jdi BingMaps IGetTrafficIncidents"
{
    procedure GetTrafficIncidents(Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetTrafficIncidents", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure GetTrafficIncidents(Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetTrafficIncidents", Text]; var JsonResponse: JsonObject): Boolean;
    procedure GetTrafficIncidents(Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetTrafficIncidents", Text]; var XmlResponse: XmlDocument): Boolean;
}