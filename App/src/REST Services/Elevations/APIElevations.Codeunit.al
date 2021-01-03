codeunit 50003 "jdi BingMaps API Elevations"
{
    Access = Public;
    procedure GetElevationList(APIVersion: Enum "jdi BingMaps API GetElevationList"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationList", Text]; var JsonResponse: JsonObject): Boolean
    var
        IGetElevationList: Interface "jdi BingMaps IGetElevationList";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationList", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationList := APIVersion;
        IGetElevationList.GetElevationList(localParameter, JsonResponse);
    end;

    procedure GetElevationList(APIVersion: Enum "jdi BingMaps API GetElevationList"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationList", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IGetElevationList: Interface "jdi BingMaps IGetElevationList";

        localParameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationList", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationList := APIVersion;
        IGetElevationList.GetElevationList(localParameter, HttpResponse);
    end;

    procedure GetElevationList(APIVersion: Enum "jdi BingMaps API GetElevationList"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationList", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IGetElevationList: Interface "jdi BingMaps IGetElevationList";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationList", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationList := APIVersion;
        IGetElevationList.GetElevationList(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps Parameter GetElevationList", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps Parameter GetElevationList", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter GetElevationList"];
        GetElevationListParameter: Enum "jdi BingMaps Parameter GetElevationList";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach GetElevationListParameter in ParamKeys do
            ParameterCopy.Add(GetElevationListParameter, Parameter.Get(GetElevationListParameter));
    end;

    procedure GetElevationPolyline(APIVersion: Enum "jdi BingMaps API GetElevationPolyline"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationPolyline", Text]; var JsonResponse: JsonObject): Boolean
    var
        IGetElevationPolyline: Interface "jdi BingMaps IGetElevationPolyline";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationPolyline", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationPolyline := APIVersion;
        IGetElevationPolyline.GetElevationPolyline(localParameter, JsonResponse);
    end;

    procedure GetElevationPolyline(APIVersion: Enum "jdi BingMaps API GetElevationPolyline"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationPolyline", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IGetElevationPolyline: Interface "jdi BingMaps IGetElevationPolyline";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationPolyline", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationPolyline := APIVersion;
        IGetElevationPolyline.GetElevationPolyline(localParameter, HttpResponse);
    end;

    procedure GetElevationPolyline(APIVersion: Enum "jdi BingMaps API GetElevationPolyline"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationPolyline", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IGetElevationPolyline: Interface "jdi BingMaps IGetElevationPolyline";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationPolyline", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationPolyline := APIVersion;
        IGetElevationPolyline.GetElevationPolyline(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps Parameter GetElevationPolyline", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps Parameter GetElevationPolyline", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter GetElevationPolyline"];
        GetElevationPolylineParameter: Enum "jdi BingMaps Parameter GetElevationPolyline";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach GetElevationPolylineParameter in ParamKeys do
            ParameterCopy.Add(GetElevationPolylineParameter, Parameter.Get(GetElevationPolylineParameter));
    end;

    procedure GetElevationBounds(APIVersion: Enum "jdi BingMaps API GetElevationBounds"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationBounds", Text]; var JsonResponse: JsonObject): Boolean
    var
        IGetElevationBounds: Interface "jdi BingMaps IGetElevationBounds";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationBounds", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationBounds := APIVersion;
        IGetElevationBounds.GetElevationBounds(localParameter, JsonResponse);
    end;

    procedure GetElevationBounds(APIVersion: Enum "jdi BingMaps API GetElevationBounds"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationBounds", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IGetElevationBounds: Interface "jdi BingMaps IGetElevationBounds";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationBounds", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationBounds := APIVersion;
        IGetElevationBounds.GetElevationBounds(localParameter, HttpResponse);
    end;

    procedure GetElevationBounds(APIVersion: Enum "jdi BingMaps API GetElevationBounds"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationBounds", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IGetElevationBounds: Interface "jdi BingMaps IGetElevationBounds";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationBounds", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationBounds := APIVersion;
        IGetElevationBounds.GetElevationBounds(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps Parameter GetElevationBounds", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps Parameter GetElevationBounds", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter GetElevationBounds"];
        GetElevationBoundsParameter: Enum "jdi BingMaps Parameter GetElevationBounds";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach GetElevationBoundsParameter in ParamKeys do
            ParameterCopy.Add(GetElevationBoundsParameter, Parameter.Get(GetElevationBoundsParameter));
    end;

    procedure GetElevationSealevel(APIVersion: Enum "jdi BingMaps API GetElevationSealevel"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationSealevel", Text]; var JsonResponse: JsonObject): Boolean
    var
        IGetElevationSealevel: Interface "jdi BingMaps IGetElevationSealevel";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationSealevel", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationSealevel := APIVersion;
        IGetElevationSealevel.GetElevationSealevel(localParameter, JsonResponse);
    end;

    procedure GetElevationSealevel(APIVersion: Enum "jdi BingMaps API GetElevationSealevel"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationSealevel", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IGetElevationSealevel: Interface "jdi BingMaps IGetElevationSealevel";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationSealevel", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationSealevel := APIVersion;
        IGetElevationSealevel.GetElevationSealevel(localParameter, HttpResponse);
    end;

    procedure GetElevationSealevel(APIVersion: Enum "jdi BingMaps API GetElevationSealevel"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationSealevel", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IGetElevationSealevel: Interface "jdi BingMaps IGetElevationSealevel";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter GetElevationSealevel", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationSealevel := APIVersion;
        IGetElevationSealevel.GetElevationSealevel(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps Parameter GetElevationSealevel", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps Parameter GetElevationSealevel", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter GetElevationSealevel"];
        GetElevationSealevelParameter: Enum "jdi BingMaps Parameter GetElevationSealevel";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach GetElevationSealevelParameter in ParamKeys do
            ParameterCopy.Add(GetElevationSealevelParameter, Parameter.Get(GetElevationSealevelParameter));
    end;
}