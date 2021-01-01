codeunit 50007 "jdi BingMaps Time Zone API"
{
    Access = Public;
    procedure FindTimeZone(APIVersion: Enum "jdi BingMaps FindTimeZone API"; Parameter: Dictionary of [Enum "jdi BingMaps FindTimeZone Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IFindTimeZone: Interface "jdi BingMaps IFindTimeZone";
        localParameter: Dictionary of [Enum "jdi BingMaps FindTimeZone Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindTimeZone := APIVersion;
        IFindTimeZone.FindTimeZone(localParameter, JsonResponse);
    end;

    procedure FindTimeZone(APIVersion: Enum "jdi BingMaps FindTimeZone API"; Parameter: Dictionary of [Enum "jdi BingMaps FindTimeZone Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IFindTimeZone: Interface "jdi BingMaps IFindTimeZone";
        localParameter: Dictionary of [Enum "jdi BingMaps FindTimeZone Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindTimeZone := APIVersion;
        IFindTimeZone.FindTimeZone(localParameter, HttpResponse);
    end;

    procedure FindTimeZone(APIVersion: Enum "jdi BingMaps FindTimeZone API"; Parameter: Dictionary of [Enum "jdi BingMaps FindTimeZone Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IFindTimeZone: Interface "jdi BingMaps IFindTimeZone";
        localParameter: Dictionary of [Enum "jdi BingMaps FindTimeZone Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindTimeZone := APIVersion;
        IFindTimeZone.FindTimeZone(localParameter, XmlResponse);
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

    procedure ConvertTimeZone(APIVersion: Enum "jdi BingMaps ConvertTimeZone API"; Parameter: Dictionary of [Enum "jdi BingMaps ConvertTimeZone Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IConvertTimeZone: Interface "jdi BingMaps IConvertTimeZone";
        localParameter: Dictionary of [Enum "jdi BingMaps ConvertTimeZone Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IConvertTimeZone := APIVersion;
        IConvertTimeZone.ConvertTimeZone(localParameter, JsonResponse);
    end;

    procedure ConvertTimeZone(APIVersion: Enum "jdi BingMaps ConvertTimeZone API"; Parameter: Dictionary of [Enum "jdi BingMaps ConvertTimeZone Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IConvertTimeZone: Interface "jdi BingMaps IConvertTimeZone";
        localParameter: Dictionary of [Enum "jdi BingMaps ConvertTimeZone Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IConvertTimeZone := APIVersion;
        IConvertTimeZone.ConvertTimeZone(localParameter, HttpResponse);
    end;

    procedure ConvertTimeZone(APIVersion: Enum "jdi BingMaps ConvertTimeZone API"; Parameter: Dictionary of [Enum "jdi BingMaps ConvertTimeZone Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IConvertTimeZone: Interface "jdi BingMaps IConvertTimeZone";
        localParameter: Dictionary of [Enum "jdi BingMaps ConvertTimeZone Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IConvertTimeZone := APIVersion;
        IConvertTimeZone.ConvertTimeZone(localParameter, XmlResponse);
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

    procedure ListTimeZones(APIVersion: Enum "jdi BingMaps ListTimeZones API"; Parameter: Dictionary of [Enum "jdi BingMaps ListTimeZones Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IListTimeZones: Interface "jdi BingMaps IListTimeZones";
        localParameter: Dictionary of [Enum "jdi BingMaps ListTimeZones Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IListTimeZones := APIVersion;
        IListTimeZones.ListTimeZones(localParameter, JsonResponse);
    end;

    procedure ListTimeZones(APIVersion: Enum "jdi BingMaps ListTimeZones API"; Parameter: Dictionary of [Enum "jdi BingMaps ListTimeZones Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IListTimeZones: Interface "jdi BingMaps IListTimeZones";
        localParameter: Dictionary of [Enum "jdi BingMaps ListTimeZones Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IListTimeZones := APIVersion;
        IListTimeZones.ListTimeZones(localParameter, HttpResponse);
    end;

    procedure ListTimeZones(APIVersion: Enum "jdi BingMaps ListTimeZones API"; Parameter: Dictionary of [Enum "jdi BingMaps ListTimeZones Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IListTimeZones: Interface "jdi BingMaps IListTimeZones";
        localParameter: Dictionary of [Enum "jdi BingMaps ListTimeZones Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IListTimeZones := APIVersion;
        IListTimeZones.ListTimeZones(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps ListTimeZones Parameter", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps ListTimeZones Parameter", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps ListTimeZones Parameter"];
        ConvertTimeZoneParameter: Enum "jdi BingMaps ListTimeZones Parameter";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach ConvertTimeZoneParameter in ParamKeys do
            ParameterCopy.Add(ConvertTimeZoneParameter, Parameter.Get(ConvertTimeZoneParameter));
    end;
}