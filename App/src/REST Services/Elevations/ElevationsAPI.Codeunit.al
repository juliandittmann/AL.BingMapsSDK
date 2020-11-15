codeunit 50003 "jdi BingMaps Elevations API"
{
    procedure GetElevationList(Parameter: Dictionary of [Enum "jdi BingMaps GetElevationList Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IGetElevationList: Interface "jdi BingMaps IGetElevationList";
        localParameter: Dictionary of [Enum "jdi BingMaps GetElevationList Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IGetElevationList := IVersion.GetElevationList();
        IGetElevationList.GetElevationList(localParameter, JsonResponse);
    end;

    procedure GetElevationList(Parameter: Dictionary of [Enum "jdi BingMaps GetElevationList Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IGetElevationList: Interface "jdi BingMaps IGetElevationList";

        localParameter: Dictionary of [Enum "jdi BingMaps GetElevationList Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IGetElevationList := IVersion.GetElevationList();
        IGetElevationList.GetElevationList(localParameter, HttpResponse);
    end;

    procedure GetElevationList(Parameter: Dictionary of [Enum "jdi BingMaps GetElevationList Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IGetElevationList: Interface "jdi BingMaps IGetElevationList";

        localParameter: Dictionary of [Enum "jdi BingMaps GetElevationList Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IGetElevationList := IVersion.GetElevationList();
        IGetElevationList.GetElevationList(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps GetElevationList Parameter", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps GetElevationList Parameter", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps GetElevationList Parameter"];
        GetElevationListParameter: Enum "jdi BingMaps GetElevationList Parameter";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach GetElevationListParameter in ParamKeys do
            ParameterCopy.Add(GetElevationListParameter, Parameter.Get(GetElevationListParameter));
    end;







    procedure GetElevationBounds(Parameter: Dictionary of [Enum "jdi BingMaps GetElevationBounds Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IGetElevationBounds: Interface "jdi BingMaps IGetElevationBounds";
        localParameter: Dictionary of [Enum "jdi BingMaps GetElevationBounds Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IGetElevationBounds := IVersion.GetElevationBounds();
        IGetElevationBounds.GetElevationBounds(localParameter, JsonResponse);
    end;

    procedure GetElevationBounds(Parameter: Dictionary of [Enum "jdi BingMaps GetElevationBounds Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IGetElevationBounds: Interface "jdi BingMaps IGetElevationBounds";

        localParameter: Dictionary of [Enum "jdi BingMaps GetElevationBounds Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IGetElevationBounds := IVersion.GetElevationBounds();
        IGetElevationBounds.GetElevationBounds(localParameter, HttpResponse);
    end;

    procedure GetElevationBounds(Parameter: Dictionary of [Enum "jdi BingMaps GetElevationBounds Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IGetElevationBounds: Interface "jdi BingMaps IGetElevationBounds";

        localParameter: Dictionary of [Enum "jdi BingMaps GetElevationBounds Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IGetElevationBounds := IVersion.GetElevationBounds();
        IGetElevationBounds.GetElevationBounds(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps GetElevationBounds Parameter", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps GetElevationBounds Parameter", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps GetElevationBounds Parameter"];
        GetElevationBoundsParameter: Enum "jdi BingMaps GetElevationBounds Parameter";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach GetElevationBoundsParameter in ParamKeys do
            ParameterCopy.Add(GetElevationBoundsParameter, Parameter.Get(GetElevationBoundsParameter));
    end;















    local procedure GetIVersion(var IVersion: Interface "jdi BingMaps IVersion") //TODO: Does not belong here
    var
        BingMapsSDKSetup: Record "jdi BingMaps Setup";
    begin
        BingMapsSDKSetup.Get();
        IVersion := BingMapsSDKSetup."API Version";
    end;
}