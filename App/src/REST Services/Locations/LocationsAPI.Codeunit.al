codeunit 50002 "jdi BingMaps Locations API"
{
    Access = Public;

    procedure FindLocationByPoint(Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByPoint Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IFindLocationByPoint: Interface "jdi BingMaps IFindLocationByPoint";
        localParameter: Dictionary of [Enum "jdi BingMaps FindLocationByPoint Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IFindLocationByPoint := IVersion.FindLocationByPoint();
        IFindLocationByPoint.FindLocationByPoint(localParameter, JsonResponse);
    end;

    procedure FindLocationByPoint(Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByPoint Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IFindLocationByPoint: Interface "jdi BingMaps IFindLocationByPoint";

        localParameter: Dictionary of [Enum "jdi BingMaps FindLocationByPoint Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IFindLocationByPoint := IVersion.FindLocationByPoint();
        IFindLocationByPoint.FindLocationByPoint(localParameter, HttpResponse);
    end;

    procedure FindLocationByPoint(Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByPoint Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IFindLocationByPoint: Interface "jdi BingMaps IFindLocationByPoint";

        localParameter: Dictionary of [Enum "jdi BingMaps FindLocationByPoint Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IFindLocationByPoint := IVersion.FindLocationByPoint();
        IFindLocationByPoint.FindLocationByPoint(localParameter, XmlResponse);
    end;



    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps FindLocationByPoint Parameter", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps FindLocationByPoint Parameter", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps FindLocationByPoint Parameter"];
        FindLocationByPointParameter: Enum "jdi BingMaps FindLocationByPoint Parameter";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach FindLocationByPointParameter in ParamKeys do
            ParameterCopy.Add(FindLocationByPointParameter, Parameter.Get(FindLocationByPointParameter));
    end;


    local procedure GetIVersion(var IVersion: Interface "jdi BingMaps IVersion") //TODO: Does not belong here
    var
        BingMapsSDKSetup: Record "jdi BingMaps Setup";
    begin
        BingMapsSDKSetup.Get();
        IVersion := BingMapsSDKSetup."API Version";
    end;
}