codeunit 50006 "jdi BingMaps API Traffic"
{
    Access = Public;
    procedure GetTrafficIncidents(APIVersion: Enum "jdi BingMaps API GetTrafficIncidents"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetTrafficIncidents", Text]; var JsonResponse: JsonObject): Boolean
    var
        IGetTrafficIncidents: Interface "jdi BingMaps IGetTrafficIncidents";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter GetTrafficIncidents", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetTrafficIncidents := APIVersion;
        IGetTrafficIncidents.GetTrafficIncidents(localParameter, JsonResponse);
    end;

    procedure GetTrafficIncidents(APIVersion: Enum "jdi BingMaps API GetTrafficIncidents"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetTrafficIncidents", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IGetTrafficIncidents: Interface "jdi BingMaps IGetTrafficIncidents";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter GetTrafficIncidents", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetTrafficIncidents := APIVersion;
        IGetTrafficIncidents.GetTrafficIncidents(localParameter, HttpResponse);
    end;

    procedure GetTrafficIncidents(APIVersion: Enum "jdi BingMaps API GetTrafficIncidents"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetTrafficIncidents", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IGetTrafficIncidents: Interface "jdi BingMaps IGetTrafficIncidents";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter GetTrafficIncidents", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetTrafficIncidents := APIVersion;
        IGetTrafficIncidents.GetTrafficIncidents(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps Parameter GetTrafficIncidents", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps Parameter GetTrafficIncidents", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter GetTrafficIncidents"];
        GetTrafficIncidentsParameter: Enum "jdi BingMaps Parameter GetTrafficIncidents";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach GetTrafficIncidentsParameter in ParamKeys do
            ParameterCopy.Add(GetTrafficIncidentsParameter, Parameter.Get(GetTrafficIncidentsParameter));
    end;
}