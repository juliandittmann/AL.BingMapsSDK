codeunit 50007 "jdi BingMaps Time Zone API"
{
    Access = Public;
    procedure FindTimeZone(Parameter: Dictionary of [Enum "jdi BingMaps FindTimeZone Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IFindTimeZone: Interface "jdi BingMaps IFindTimeZone";
        localParameter: Dictionary of [Enum "jdi BingMaps FindTimeZone Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

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
        CopyParameter(Parameter, localParameter);

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
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IFindTimeZone := IVersion.FindTimeZone();
        IFindTimeZone.FindTimeZone(localParameter, XmlResponse);
    end;

    procedure ConvertTimeZone(Parameter: Dictionary of [Enum "jdi BingMaps ConvertTimeZone Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IConvertTimeZone: Interface "jdi BingMaps IConvertTimeZone";
        localParameter: Dictionary of [Enum "jdi BingMaps ConvertTimeZone Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IConvertTimeZone := IVersion.ConvertTimeZone();
        IConvertTimeZone.ConvertTimeZone(localParameter, JsonResponse);
    end;

    procedure ConvertTimeZone(Parameter: Dictionary of [Enum "jdi BingMaps ConvertTimeZone Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IConvertTimeZone: Interface "jdi BingMaps IConvertTimeZone";

        localParameter: Dictionary of [Enum "jdi BingMaps ConvertTimeZone Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IConvertTimeZone := IVersion.ConvertTimeZone();
        IConvertTimeZone.ConvertTimeZone(localParameter, HttpResponse);
    end;

    procedure ConvertTimeZone(Parameter: Dictionary of [Enum "jdi BingMaps ConvertTimeZone Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IConvertTimeZone: Interface "jdi BingMaps IConvertTimeZone";

        localParameter: Dictionary of [Enum "jdi BingMaps ConvertTimeZone Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IConvertTimeZone := IVersion.ConvertTimeZone();
        IConvertTimeZone.ConvertTimeZone(localParameter, XmlResponse);
    end;


    local procedure GetIVersion(var IVersion: Interface "jdi BingMaps IVersion")
    var
        BingMapsSDKSetup: Record "jdi BingMaps Setup";
    begin
        BingMapsSDKSetup.Get();
        IVersion := BingMapsSDKSetup."API Version";
    end;


    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps FindTimeZone Parameter", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps FindTimeZone Parameter", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps FindTimeZone Parameter"];
        FindTimeZoneParameter: Enum "jdi BingMaps FindTimeZone Parameter";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach FindTimeZoneParameter in ParamKeys do
            ParameterCopy.Add(FindTimeZoneParameter, Parameter.Get(FindTimeZoneParameter));
    end;


    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps ConvertTimeZone Parameter", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps ConvertTimeZone Parameter", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps ConvertTimeZone Parameter"];
        ConvertTimeZoneParameter: Enum "jdi BingMaps ConvertTimeZone Parameter";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach ConvertTimeZoneParameter in ParamKeys do
            ParameterCopy.Add(ConvertTimeZoneParameter, Parameter.Get(ConvertTimeZoneParameter));
    end;
}