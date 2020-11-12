codeunit 50006 "jdi BingMaps Traffic API"
{
    procedure GetTrafficIncidents(Parameter: Dictionary of [Enum "jdi BingMaps GetTrafficIncidents Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IGetTrafficIncidents: Interface "jdi BingMaps IGetTrafficIncidents";
        localParameter: Dictionary of [Enum "jdi BingMaps GetTrafficIncidents Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IGetTrafficIncidents := IVersion.GetTrafficIncidents();
        IGetTrafficIncidents.GetTrafficIncidents(localParameter, JsonResponse);
    end;

    procedure GetTrafficIncidents(Parameter: Dictionary of [Enum "jdi BingMaps GetTrafficIncidents Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IGetTrafficIncidents: Interface "jdi BingMaps IGetTrafficIncidents";

        localParameter: Dictionary of [Enum "jdi BingMaps GetTrafficIncidents Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IGetTrafficIncidents := IVersion.GetTrafficIncidents();
        IGetTrafficIncidents.GetTrafficIncidents(localParameter, HttpResponse);
    end;

    procedure GetTrafficIncidents(Parameter: Dictionary of [Enum "jdi BingMaps GetTrafficIncidents Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IGetTrafficIncidents: Interface "jdi BingMaps IGetTrafficIncidents";

        localParameter: Dictionary of [Enum "jdi BingMaps GetTrafficIncidents Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IGetTrafficIncidents := IVersion.GetTrafficIncidents();
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

    local procedure GetIVersion(var IVersion: Interface "jdi BingMaps IVersion") //TODO: Does not belong here
    var
        BingMapsSDKSetup: Record "jdi BingMaps Setup";
    begin
        BingMapsSDKSetup.Get();
        IVersion := BingMapsSDKSetup."API Version";
    end;
}