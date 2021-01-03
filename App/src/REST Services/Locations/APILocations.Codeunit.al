codeunit 50002 "jdi BingMaps API Locations"
{
    Access = Public;

    procedure FindLocationByAddress(APIVersion: Enum "jdi BingMaps API FindLocationByAddress"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByAddress", Text]; var JsonResponse: JsonObject): Boolean
    var
        IFindLocationByAddress: Interface "jdi BingMaps IFindLocationByAddress";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByAddress", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindLocationByAddress := APIVersion;
        IFindLocationByAddress.FindLocationByAddress(localParameter, JsonResponse);
    end;

    procedure FindLocationByAddress(APIVersion: Enum "jdi BingMaps API FindLocationByAddress"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByAddress", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IFindLocationByAddress: Interface "jdi BingMaps IFindLocationByAddress";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByAddress", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindLocationByAddress := APIVersion;
        IFindLocationByAddress.FindLocationByAddress(localParameter, HttpResponse);
    end;

    procedure FindLocationByAddress(APIVersion: Enum "jdi BingMaps API FindLocationByAddress"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByAddress", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IFindLocationByAddress: Interface "jdi BingMaps IFindLocationByAddress";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByAddress", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindLocationByAddress := APIVersion;
        IFindLocationByAddress.FindLocationByAddress(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps Parameter FindLocationByAddress", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps Parameter FindLocationByAddress", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter FindLocationByAddress"];
        FindLocationByAddressParameter: Enum "jdi BingMaps Parameter FindLocationByAddress";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach FindLocationByAddressParameter in ParamKeys do
            ParameterCopy.Add(FindLocationByAddressParameter, Parameter.Get(FindLocationByAddressParameter));
    end;

    procedure FindLocationByPoint(APIVersion: Enum "jdi BingMaps API FindLocationByPoint"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByPoint", Text]; var JsonResponse: JsonObject): Boolean
    var
        IFindLocationByPoint: Interface "jdi BingMaps IFindLocationByPoint";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByPoint", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindLocationByPoint := APIVersion;
        IFindLocationByPoint.FindLocationByPoint(localParameter, JsonResponse);
    end;

    procedure FindLocationByPoint(APIVersion: Enum "jdi BingMaps API FindLocationByPoint"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByPoint", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IFindLocationByPoint: Interface "jdi BingMaps IFindLocationByPoint";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByPoint", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindLocationByPoint := APIVersion;
        IFindLocationByPoint.FindLocationByPoint(localParameter, HttpResponse);
    end;

    procedure FindLocationByPoint(APIVersion: Enum "jdi BingMaps API FindLocationByPoint"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByPoint", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IFindLocationByPoint: Interface "jdi BingMaps IFindLocationByPoint";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByPoint", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindLocationByPoint := APIVersion;
        IFindLocationByPoint.FindLocationByPoint(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps Parameter FindLocationByPoint", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps Parameter FindLocationByPoint", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter FindLocationByPoint"];
        FindLocationByPointParameter: Enum "jdi BingMaps Parameter FindLocationByPoint";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach FindLocationByPointParameter in ParamKeys do
            ParameterCopy.Add(FindLocationByPointParameter, Parameter.Get(FindLocationByPointParameter));
    end;

    procedure FindLocationByQuery(APIVersion: Enum "jdi BingMaps API FindLocationByQuery"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByQuery", Text]; var JsonResponse: JsonObject): Boolean
    var
        IFindLocationByQuery: Interface "jdi BingMaps IFindLocationByQuery";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByQuery", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindLocationByQuery := APIVersion;
        IFindLocationByQuery.FindLocationByQuery(localParameter, JsonResponse);
    end;

    procedure FindLocationByQuery(APIVersion: Enum "jdi BingMaps API FindLocationByQuery"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByQuery", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IFindLocationByQuery: Interface "jdi BingMaps IFindLocationByQuery";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByQuery", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindLocationByQuery := APIVersion;
        IFindLocationByQuery.FindLocationByQuery(localParameter, HttpResponse);
    end;

    procedure FindLocationByQuery(APIVersion: Enum "jdi BingMaps API FindLocationByQuery"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByQuery", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IFindLocationByQuery: Interface "jdi BingMaps IFindLocationByQuery";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByQuery", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindLocationByQuery := APIVersion;
        IFindLocationByQuery.FindLocationByQuery(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps Parameter FindLocationByQuery", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps Parameter FindLocationByQuery", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter FindLocationByQuery"];
        FindLocationByPointParameter: Enum "jdi BingMaps Parameter FindLocationByQuery";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach FindLocationByPointParameter in ParamKeys do
            ParameterCopy.Add(FindLocationByPointParameter, Parameter.Get(FindLocationByPointParameter));
    end;

    procedure LocationRecognition(APIVersion: Enum "jdi BingMaps API LocationRecognition"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter LocationRecognition", Text]; var JsonResponse: JsonObject): Boolean
    var
        ILocationRecognition: Interface "jdi BingMaps ILocationRecognition";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter LocationRecognition", Text];
    begin
        CopyParameter(Parameter, localParameter);
        ILocationRecognition := APIVersion;
        ILocationRecognition.LocationRecognition(localParameter, JsonResponse);
    end;

    procedure LocationRecognition(APIVersion: Enum "jdi BingMaps API LocationRecognition"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter LocationRecognition", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        ILocationRecognition: Interface "jdi BingMaps ILocationRecognition";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter LocationRecognition", Text];
    begin
        CopyParameter(Parameter, localParameter);
        ILocationRecognition := APIVersion;
        ILocationRecognition.LocationRecognition(localParameter, HttpResponse);
    end;

    procedure LocationRecognition(APIVersion: Enum "jdi BingMaps API LocationRecognition"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter LocationRecognition", Text]; var XmlResponse: XmlDocument): Boolean
    var
        ILocationRecognition: Interface "jdi BingMaps ILocationRecognition";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter LocationRecognition", Text];
    begin
        CopyParameter(Parameter, localParameter);
        ILocationRecognition := APIVersion;
        ILocationRecognition.LocationRecognition(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps Parameter LocationRecognition", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps Parameter LocationRecognition", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter LocationRecognition"];
        LocationRecognitionParameter: Enum "jdi BingMaps Parameter LocationRecognition";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach LocationRecognitionParameter in ParamKeys do
            ParameterCopy.Add(LocationRecognitionParameter, Parameter.Get(LocationRecognitionParameter));
    end;

    procedure LocalSearch(APIVersion: Enum "jdi BingMaps API LocalSearch"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter LocalSearch", Text]; var JsonResponse: JsonObject): Boolean
    var
        ILocalSearch: Interface "jdi BingMaps ILocalSearch";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter LocalSearch", Text];
    begin
        CopyParameter(Parameter, localParameter);
        ILocalSearch := APIVersion;
        ILocalSearch.LocalSearch(localParameter, JsonResponse);
    end;

    procedure LocalSearch(APIVersion: Enum "jdi BingMaps API LocalSearch"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter LocalSearch", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        ILocalSearch: Interface "jdi BingMaps ILocalSearch";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter LocalSearch", Text];
    begin
        CopyParameter(Parameter, localParameter);
        ILocalSearch := APIVersion;
        ILocalSearch.LocalSearch(localParameter, HttpResponse);
    end;

    procedure LocalSearch(APIVersion: Enum "jdi BingMaps API LocalSearch"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter LocalSearch", Text]; var XmlResponse: XmlDocument): Boolean
    var
        ILocalSearch: Interface "jdi BingMaps ILocalSearch";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter LocalSearch", Text];
    begin
        CopyParameter(Parameter, localParameter);
        ILocalSearch := APIVersion;
        ILocalSearch.LocalSearch(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps Parameter LocalSearch", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps Parameter LocalSearch", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter LocalSearch"];
        LocalSearchParameter: Enum "jdi BingMaps Parameter LocalSearch";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach LocalSearchParameter in ParamKeys do
            ParameterCopy.Add(LocalSearchParameter, Parameter.Get(LocalSearchParameter));
    end;
}