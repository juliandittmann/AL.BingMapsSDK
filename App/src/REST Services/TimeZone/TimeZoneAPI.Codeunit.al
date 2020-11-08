codeunit 50007 "jdi BingMaps Time Zone API"
{
    Access = Public;
    procedure FindTimeZone(Parameter: Dictionary of [Enum "jdi BingMaps FindTimeZone Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IFindTimeZone: Interface "jdi BingMaps IFindTimeZone";
    begin
        GetIVersion(IVersion);
        IFindTimeZone := IVersion.FindTimeZone();
        IFindTimeZone.FindTimeZone(Parameter, JsonResponse);
    end;

    procedure FindTimeZone(Parameter: Dictionary of [Enum "jdi BingMaps FindTimeZone Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IFindTimeZone: Interface "jdi BingMaps IFindTimeZone";
    begin
        GetIVersion(IVersion);
        IFindTimeZone := IVersion.FindTimeZone();
        IFindTimeZone.FindTimeZone(Parameter, HttpResponse);
    end;

    procedure FindTimeZone(Parameter: Dictionary of [Enum "jdi BingMaps FindTimeZone Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IFindTimeZone: Interface "jdi BingMaps IFindTimeZone";
    begin
        GetIVersion(IVersion);
        IFindTimeZone := IVersion.FindTimeZone();
        IFindTimeZone.FindTimeZone(Parameter, XmlResponse);
    end;

    local procedure GetIVersion(var IVersion: Interface "jdi BingMaps IVersion")
    var
        BingMapsSDKSetup: Record "jdi BingMaps Setup";
    begin
        BingMapsSDKSetup.Get();
        IVersion := BingMapsSDKSetup."API Version";
    end;
}