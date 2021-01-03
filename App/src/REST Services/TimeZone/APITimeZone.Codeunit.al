codeunit 50007 "jdi BingMaps API TimeZone"
{
    Access = Public;
    procedure FindTimeZone(APIVersion: Enum "jdi BingMaps API FindTimeZone"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindTimeZone", Text]; var JsonResponse: JsonObject): Boolean
    var
        IFindTimeZone: Interface "jdi BingMaps IFindTimeZone";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter FindTimeZone", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindTimeZone := APIVersion;
        IFindTimeZone.FindTimeZone(localParameter, JsonResponse);
    end;

    procedure FindTimeZone(APIVersion: Enum "jdi BingMaps API FindTimeZone"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindTimeZone", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IFindTimeZone: Interface "jdi BingMaps IFindTimeZone";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter FindTimeZone", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindTimeZone := APIVersion;
        IFindTimeZone.FindTimeZone(localParameter, HttpResponse);
    end;

    procedure FindTimeZone(APIVersion: Enum "jdi BingMaps API FindTimeZone"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindTimeZone", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IFindTimeZone: Interface "jdi BingMaps IFindTimeZone";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter FindTimeZone", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindTimeZone := APIVersion;
        IFindTimeZone.FindTimeZone(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps Parameter FindTimeZone", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps Parameter FindTimeZone", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter FindTimeZone"];
        FindTimeZoneParameter: Enum "jdi BingMaps Parameter FindTimeZone";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach FindTimeZoneParameter in ParamKeys do
            ParameterCopy.Add(FindTimeZoneParameter, Parameter.Get(FindTimeZoneParameter));
    end;

    procedure ConvertTimeZone(APIVersion: Enum "jdi BingMaps API ConvertTimeZone"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter ConvertTimeZone", Text]; var JsonResponse: JsonObject): Boolean
    var
        IConvertTimeZone: Interface "jdi BingMaps IConvertTimeZone";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter ConvertTimeZone", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IConvertTimeZone := APIVersion;
        IConvertTimeZone.ConvertTimeZone(localParameter, JsonResponse);
    end;

    procedure ConvertTimeZone(APIVersion: Enum "jdi BingMaps API ConvertTimeZone"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter ConvertTimeZone", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IConvertTimeZone: Interface "jdi BingMaps IConvertTimeZone";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter ConvertTimeZone", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IConvertTimeZone := APIVersion;
        IConvertTimeZone.ConvertTimeZone(localParameter, HttpResponse);
    end;

    procedure ConvertTimeZone(APIVersion: Enum "jdi BingMaps API ConvertTimeZone"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter ConvertTimeZone", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IConvertTimeZone: Interface "jdi BingMaps IConvertTimeZone";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter ConvertTimeZone", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IConvertTimeZone := APIVersion;
        IConvertTimeZone.ConvertTimeZone(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps Parameter ConvertTimeZone", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps Parameter ConvertTimeZone", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter ConvertTimeZone"];
        ConvertTimeZoneParameter: Enum "jdi BingMaps Parameter ConvertTimeZone";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach ConvertTimeZoneParameter in ParamKeys do
            ParameterCopy.Add(ConvertTimeZoneParameter, Parameter.Get(ConvertTimeZoneParameter));
    end;

    procedure ListTimeZones(APIVersion: Enum "jdi BingMaps API ListTimeZones"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter ListTimeZones", Text]; var JsonResponse: JsonObject): Boolean
    var
        IListTimeZones: Interface "jdi BingMaps IListTimeZones";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter ListTimeZones", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IListTimeZones := APIVersion;
        IListTimeZones.ListTimeZones(localParameter, JsonResponse);
    end;

    procedure ListTimeZones(APIVersion: Enum "jdi BingMaps API ListTimeZones"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter ListTimeZones", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IListTimeZones: Interface "jdi BingMaps IListTimeZones";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter ListTimeZones", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IListTimeZones := APIVersion;
        IListTimeZones.ListTimeZones(localParameter, HttpResponse);
    end;

    procedure ListTimeZones(APIVersion: Enum "jdi BingMaps API ListTimeZones"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter ListTimeZones", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IListTimeZones: Interface "jdi BingMaps IListTimeZones";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter ListTimeZones", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IListTimeZones := APIVersion;
        IListTimeZones.ListTimeZones(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps Parameter ListTimeZones", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps Parameter ListTimeZones", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter ListTimeZones"];
        ConvertTimeZoneParameter: Enum "jdi BingMaps Parameter ListTimeZones";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach ConvertTimeZoneParameter in ParamKeys do
            ParameterCopy.Add(ConvertTimeZoneParameter, Parameter.Get(ConvertTimeZoneParameter));
    end;
}