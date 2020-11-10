codeunit 50007 "jdi BingMaps Time Zone API"
{
    Access = Public;
    procedure FindTimeZone(Parameter: Dictionary of [Enum "jdi BingMaps FindTimeZone Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IFindTimeZone: Interface "jdi BingMaps IFindTimeZone";
        localParameter: Dictionary of [Enum "jdi BingMaps FindTimeZone Parameter", Text];
    begin
        CopyFindTimeZoneParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IFindTimeZone := IVersion.FindTimeZone();
        IFindTimeZone.FindTimeZone(localParameter, JsonResponse);
    end;

    procedure FindTimeZone(Parameter: Dictionary of [Enum "jdi BingMaps FindTimeZone Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IFindTimeZone: Interface "jdi BingMaps IFindTimeZone";

        localParameter: Dictionary of [Enum "jdi BingMaps FindTimeZone Parameter", Text];
    begin
        CopyFindTimeZoneParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IFindTimeZone := IVersion.FindTimeZone();
        IFindTimeZone.FindTimeZone(localParameter, HttpResponse);
    end;

    procedure FindTimeZone(Parameter: Dictionary of [Enum "jdi BingMaps FindTimeZone Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IFindTimeZone: Interface "jdi BingMaps IFindTimeZone";

        localParameter: Dictionary of [Enum "jdi BingMaps FindTimeZone Parameter", Text];
    begin
        CopyFindTimeZoneParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IFindTimeZone := IVersion.FindTimeZone();
        IFindTimeZone.FindTimeZone(localParameter, XmlResponse);
    end;

    local procedure GetIVersion(var IVersion: Interface "jdi BingMaps IVersion")
    var
        BingMapsSDKSetup: Record "jdi BingMaps Setup";
    begin
        BingMapsSDKSetup.Get();
        IVersion := BingMapsSDKSetup."API Version";
    end;


    local procedure CopyFindTimeZoneParameter(Parameter: Dictionary of [enum "jdi BingMaps FindTimeZone Parameter", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps FindTimeZone Parameter", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps FindTimeZone Parameter"];
        FindTimeZoneParameter: Enum "jdi BingMaps FindTimeZone Parameter";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach FindTimeZoneParameter in ParamKeys do
            ParameterCopy.Add(FindTimeZoneParameter, Parameter.Get(FindTimeZoneParameter));
    end;
}