codeunit 50006 "jdi BingMaps Traffic API"
{
    procedure GetTrafficIncidents(APIVersion: Enum "jdi BingMaps GetTrafficIncidents API"; Parameter: Dictionary of [Enum "jdi BingMaps GetTrafficIncidents Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IGetTrafficIncidents: Interface "jdi BingMaps IGetTrafficIncidents";
        localParameter: Dictionary of [Enum "jdi BingMaps GetTrafficIncidents Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetTrafficIncidents := APIVersion;
        IGetTrafficIncidents.GetTrafficIncidents(localParameter, JsonResponse);
    end;

    procedure GetTrafficIncidents(APIVersion: Enum "jdi BingMaps GetTrafficIncidents API"; Parameter: Dictionary of [Enum "jdi BingMaps GetTrafficIncidents Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IGetTrafficIncidents: Interface "jdi BingMaps IGetTrafficIncidents";
        localParameter: Dictionary of [Enum "jdi BingMaps GetTrafficIncidents Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetTrafficIncidents := APIVersion;
        IGetTrafficIncidents.GetTrafficIncidents(localParameter, HttpResponse);
    end;

    procedure GetTrafficIncidents(APIVersion: Enum "jdi BingMaps GetTrafficIncidents API"; Parameter: Dictionary of [Enum "jdi BingMaps GetTrafficIncidents Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IGetTrafficIncidents: Interface "jdi BingMaps IGetTrafficIncidents";
        localParameter: Dictionary of [Enum "jdi BingMaps GetTrafficIncidents Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetTrafficIncidents := APIVersion;
        IGetTrafficIncidents.GetTrafficIncidents(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps GetTrafficIncidents Parameter", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps GetTrafficIncidents Parameter", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps GetTrafficIncidents Parameter"];
        GetTrafficIncidentsParameter: Enum "jdi BingMaps GetTrafficIncidents Parameter";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach GetTrafficIncidentsParameter in ParamKeys do
            ParameterCopy.Add(GetTrafficIncidentsParameter, Parameter.Get(GetTrafficIncidentsParameter));
    end;
}