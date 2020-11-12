interface "jdi BingMaps IGetTrafficIncidents"
{
    procedure GetTrafficIncidents(Parameter: Dictionary of [Enum "jdi BingMaps GetTrafficIncidents Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    procedure GetTrafficIncidents(Parameter: Dictionary of [Enum "jdi BingMaps GetTrafficIncidents Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    procedure GetTrafficIncidents(Parameter: Dictionary of [Enum "jdi BingMaps GetTrafficIncidents Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
}