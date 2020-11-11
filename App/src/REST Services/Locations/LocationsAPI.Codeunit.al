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

    procedure FindLocationByQuery(Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByQuery Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IFindLocationByQuery: Interface "jdi BingMaps IFindLocationByQuery";
        localParameter: Dictionary of [Enum "jdi BingMaps FindLocationByQuery Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IFindLocationByQuery := IVersion.FindLocationByQuery();
        IFindLocationByQuery.FindLocationByQuery(localParameter, JsonResponse);
    end;

    procedure FindLocationByQuery(Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByQuery Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IFindLocationByQuery: Interface "jdi BingMaps IFindLocationByQuery";

        localParameter: Dictionary of [Enum "jdi BingMaps FindLocationByQuery Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IFindLocationByQuery := IVersion.FindLocationByQuery();
        IFindLocationByQuery.FindLocationByQuery(localParameter, HttpResponse);
    end;

    procedure FindLocationByQuery(Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByQuery Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IFindLocationByQuery: Interface "jdi BingMaps IFindLocationByQuery";

        localParameter: Dictionary of [Enum "jdi BingMaps FindLocationByQuery Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IFindLocationByQuery := IVersion.FindLocationByQuery();
        IFindLocationByQuery.FindLocationByQuery(localParameter, XmlResponse);
    end;






    procedure LocationRecognition(Parameter: Dictionary of [Enum "jdi BingMaps LocationRecognition Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        ILocationRecognition: Interface "jdi BingMaps ILocationRecognition";
        localParameter: Dictionary of [Enum "jdi BingMaps LocationRecognition Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        ILocationRecognition := IVersion.LocationRecognition();
        ILocationRecognition.LocationRecognition(localParameter, JsonResponse);
    end;

    procedure LocationRecognition(Parameter: Dictionary of [Enum "jdi BingMaps LocationRecognition Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        ILocationRecognition: Interface "jdi BingMaps ILocationRecognition";

        localParameter: Dictionary of [Enum "jdi BingMaps LocationRecognition Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        ILocationRecognition := IVersion.LocationRecognition();
        ILocationRecognition.LocationRecognition(localParameter, HttpResponse);
    end;

    procedure LocationRecognition(Parameter: Dictionary of [Enum "jdi BingMaps LocationRecognition Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        ILocationRecognition: Interface "jdi BingMaps ILocationRecognition";

        localParameter: Dictionary of [Enum "jdi BingMaps LocationRecognition Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        ILocationRecognition := IVersion.LocationRecognition();
        ILocationRecognition.LocationRecognition(localParameter, XmlResponse);
    end;




    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps LocationRecognition Parameter", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps LocationRecognition Parameter", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps LocationRecognition Parameter"];
        LocationRecognitionParameter: Enum "jdi BingMaps LocationRecognition Parameter";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach LocationRecognitionParameter in ParamKeys do
            ParameterCopy.Add(LocationRecognitionParameter, Parameter.Get(LocationRecognitionParameter));
    end;


    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps FindLocationByQuery Parameter", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps FindLocationByQuery Parameter", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps FindLocationByQuery Parameter"];
        FindLocationByPointParameter: Enum "jdi BingMaps FindLocationByQuery Parameter";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach FindLocationByPointParameter in ParamKeys do
            ParameterCopy.Add(FindLocationByPointParameter, Parameter.Get(FindLocationByPointParameter));
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