codeunit 50003 "jdi BingMaps Elevations API"
{
    procedure GetElevationList(APIVersion: Enum "jdi BingMaps GetElevationList API"; Parameter: Dictionary of [Enum "jdi BingMaps GetElevationList Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IGetElevationList: Interface "jdi BingMaps IGetElevationList";
        localParameter: Dictionary of [Enum "jdi BingMaps GetElevationList Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationList := APIVersion;
        IGetElevationList.GetElevationList(localParameter, JsonResponse);
    end;

    procedure GetElevationList(APIVersion: Enum "jdi BingMaps GetElevationList API"; Parameter: Dictionary of [Enum "jdi BingMaps GetElevationList Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IGetElevationList: Interface "jdi BingMaps IGetElevationList";

        localParameter: Dictionary of [Enum "jdi BingMaps GetElevationList Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationList := APIVersion;
        IGetElevationList.GetElevationList(localParameter, HttpResponse);
    end;

    procedure GetElevationList(APIVersion: Enum "jdi BingMaps GetElevationList API"; Parameter: Dictionary of [Enum "jdi BingMaps GetElevationList Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IGetElevationList: Interface "jdi BingMaps IGetElevationList";
        localParameter: Dictionary of [Enum "jdi BingMaps GetElevationList Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationList := APIVersion;
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

    procedure GetElevationPolyline(APIVersion: Enum "jdi BingMaps GetElevationPolyline API"; Parameter: Dictionary of [Enum "jdi BingMaps GetElevationPolyline Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IGetElevationPolyline: Interface "jdi BingMaps IGetElevationPolyline";
        localParameter: Dictionary of [Enum "jdi BingMaps GetElevationPolyline Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationPolyline := APIVersion;
        IGetElevationPolyline.GetElevationPolyline(localParameter, JsonResponse);
    end;

    procedure GetElevationPolyline(APIVersion: Enum "jdi BingMaps GetElevationPolyline API"; Parameter: Dictionary of [Enum "jdi BingMaps GetElevationPolyline Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IGetElevationPolyline: Interface "jdi BingMaps IGetElevationPolyline";
        localParameter: Dictionary of [Enum "jdi BingMaps GetElevationPolyline Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationPolyline := APIVersion;
        IGetElevationPolyline.GetElevationPolyline(localParameter, HttpResponse);
    end;

    procedure GetElevationPolyline(APIVersion: Enum "jdi BingMaps GetElevationPolyline API"; Parameter: Dictionary of [Enum "jdi BingMaps GetElevationPolyline Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IGetElevationPolyline: Interface "jdi BingMaps IGetElevationPolyline";
        localParameter: Dictionary of [Enum "jdi BingMaps GetElevationPolyline Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationPolyline := APIVersion;
        IGetElevationPolyline.GetElevationPolyline(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps GetElevationPolyline Parameter", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps GetElevationPolyline Parameter", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps GetElevationPolyline Parameter"];
        GetElevationPolylineParameter: Enum "jdi BingMaps GetElevationPolyline Parameter";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach GetElevationPolylineParameter in ParamKeys do
            ParameterCopy.Add(GetElevationPolylineParameter, Parameter.Get(GetElevationPolylineParameter));
    end;

    procedure GetElevationBounds(APIVersion: Enum "jdi BingMaps GetElevationBounds API"; Parameter: Dictionary of [Enum "jdi BingMaps GetElevationBounds Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IGetElevationBounds: Interface "jdi BingMaps IGetElevationBounds";
        localParameter: Dictionary of [Enum "jdi BingMaps GetElevationBounds Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationBounds := APIVersion;
        IGetElevationBounds.GetElevationBounds(localParameter, JsonResponse);
    end;

    procedure GetElevationBounds(APIVersion: Enum "jdi BingMaps GetElevationBounds API"; Parameter: Dictionary of [Enum "jdi BingMaps GetElevationBounds Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IGetElevationBounds: Interface "jdi BingMaps IGetElevationBounds";
        localParameter: Dictionary of [Enum "jdi BingMaps GetElevationBounds Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationBounds := APIVersion;
        IGetElevationBounds.GetElevationBounds(localParameter, HttpResponse);
    end;

    procedure GetElevationBounds(APIVersion: Enum "jdi BingMaps GetElevationBounds API"; Parameter: Dictionary of [Enum "jdi BingMaps GetElevationBounds Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IGetElevationBounds: Interface "jdi BingMaps IGetElevationBounds";
        localParameter: Dictionary of [Enum "jdi BingMaps GetElevationBounds Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationBounds := APIVersion;
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

    procedure GetElevationSealevel(APIVersion: Enum "jdi BingMaps GetElevationSealevel API"; Parameter: Dictionary of [Enum "jdi BingMaps GetElevationSealevel Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IGetElevationSealevel: Interface "jdi BingMaps IGetElevationSealevel";
        localParameter: Dictionary of [Enum "jdi BingMaps GetElevationSealevel Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationSealevel := APIVersion;
        IGetElevationSealevel.GetElevationSealevel(localParameter, JsonResponse);
    end;

    procedure GetElevationSealevel(APIVersion: Enum "jdi BingMaps GetElevationSealevel API"; Parameter: Dictionary of [Enum "jdi BingMaps GetElevationSealevel Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IGetElevationSealevel: Interface "jdi BingMaps IGetElevationSealevel";
        localParameter: Dictionary of [Enum "jdi BingMaps GetElevationSealevel Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationSealevel := APIVersion;
        IGetElevationSealevel.GetElevationSealevel(localParameter, HttpResponse);
    end;

    procedure GetElevationSealevel(APIVersion: Enum "jdi BingMaps GetElevationSealevel API"; Parameter: Dictionary of [Enum "jdi BingMaps GetElevationSealevel Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IGetElevationSealevel: Interface "jdi BingMaps IGetElevationSealevel";
        localParameter: Dictionary of [Enum "jdi BingMaps GetElevationSealevel Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IGetElevationSealevel := APIVersion;
        IGetElevationSealevel.GetElevationSealevel(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps GetElevationSealevel Parameter", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps GetElevationSealevel Parameter", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps GetElevationSealevel Parameter"];
        GetElevationSealevelParameter: Enum "jdi BingMaps GetElevationSealevel Parameter";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach GetElevationSealevelParameter in ParamKeys do
            ParameterCopy.Add(GetElevationSealevelParameter, Parameter.Get(GetElevationSealevelParameter));
    end;
}