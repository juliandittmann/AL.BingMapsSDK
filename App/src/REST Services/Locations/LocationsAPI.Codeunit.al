codeunit 50002 "jdi BingMaps Locations API"
{
    Access = Public;

    procedure FindLocationByAddress(APIVersion: Enum "jdi BingMaps FindLocationByAddress API"; Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByAddress Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IFindLocationByAddress: Interface "jdi BingMaps IFindLocationByAddress";
        localParameter: Dictionary of [Enum "jdi BingMaps FindLocationByAddress Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindLocationByAddress := APIVersion;
        IFindLocationByAddress.FindLocationByAddress(localParameter, JsonResponse);
    end;

    procedure FindLocationByAddress(APIVersion: Enum "jdi BingMaps FindLocationByAddress API"; Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByAddress Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IFindLocationByAddress: Interface "jdi BingMaps IFindLocationByAddress";
        localParameter: Dictionary of [Enum "jdi BingMaps FindLocationByAddress Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindLocationByAddress := APIVersion;
        IFindLocationByAddress.FindLocationByAddress(localParameter, HttpResponse);
    end;

    procedure FindLocationByAddress(APIVersion: Enum "jdi BingMaps FindLocationByAddress API"; Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByAddress Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IFindLocationByAddress: Interface "jdi BingMaps IFindLocationByAddress";
        localParameter: Dictionary of [Enum "jdi BingMaps FindLocationByAddress Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindLocationByAddress := APIVersion;
        IFindLocationByAddress.FindLocationByAddress(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps FindLocationByAddress Parameter", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps FindLocationByAddress Parameter", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps FindLocationByAddress Parameter"];
        FindLocationByAddressParameter: Enum "jdi BingMaps FindLocationByAddress Parameter";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach FindLocationByAddressParameter in ParamKeys do
            ParameterCopy.Add(FindLocationByAddressParameter, Parameter.Get(FindLocationByAddressParameter));
    end;

    procedure FindLocationByPoint(APIVersion: Enum "jdi BingMaps FindLocationByPoint API"; Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByPoint Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IFindLocationByPoint: Interface "jdi BingMaps IFindLocationByPoint";
        localParameter: Dictionary of [Enum "jdi BingMaps FindLocationByPoint Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindLocationByPoint := APIVersion;
        IFindLocationByPoint.FindLocationByPoint(localParameter, JsonResponse);
    end;

    procedure FindLocationByPoint(APIVersion: Enum "jdi BingMaps FindLocationByPoint API"; Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByPoint Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IFindLocationByPoint: Interface "jdi BingMaps IFindLocationByPoint";
        localParameter: Dictionary of [Enum "jdi BingMaps FindLocationByPoint Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindLocationByPoint := APIVersion;
        IFindLocationByPoint.FindLocationByPoint(localParameter, HttpResponse);
    end;

    procedure FindLocationByPoint(APIVersion: Enum "jdi BingMaps FindLocationByPoint API"; Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByPoint Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IFindLocationByPoint: Interface "jdi BingMaps IFindLocationByPoint";
        localParameter: Dictionary of [Enum "jdi BingMaps FindLocationByPoint Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindLocationByPoint := APIVersion;
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

    procedure FindLocationByQuery(APIVersion: Enum "jdi BingMaps FindLocationByQuery API"; Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByQuery Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IFindLocationByQuery: Interface "jdi BingMaps IFindLocationByQuery";
        localParameter: Dictionary of [Enum "jdi BingMaps FindLocationByQuery Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindLocationByQuery := APIVersion;
        IFindLocationByQuery.FindLocationByQuery(localParameter, JsonResponse);
    end;

    procedure FindLocationByQuery(APIVersion: Enum "jdi BingMaps FindLocationByQuery API"; Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByQuery Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IFindLocationByQuery: Interface "jdi BingMaps IFindLocationByQuery";
        localParameter: Dictionary of [Enum "jdi BingMaps FindLocationByQuery Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindLocationByQuery := APIVersion;
        IFindLocationByQuery.FindLocationByQuery(localParameter, HttpResponse);
    end;

    procedure FindLocationByQuery(APIVersion: Enum "jdi BingMaps FindLocationByQuery API"; Parameter: Dictionary of [Enum "jdi BingMaps FindLocationByQuery Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IFindLocationByQuery: Interface "jdi BingMaps IFindLocationByQuery";
        localParameter: Dictionary of [Enum "jdi BingMaps FindLocationByQuery Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IFindLocationByQuery := APIVersion;
        IFindLocationByQuery.FindLocationByQuery(localParameter, XmlResponse);
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

    procedure LocationRecognition(APIVersion: Enum "jdi BingMaps LocationRecognition API"; Parameter: Dictionary of [Enum "jdi BingMaps LocationRecognition Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        ILocationRecognition: Interface "jdi BingMaps ILocationRecognition";
        localParameter: Dictionary of [Enum "jdi BingMaps LocationRecognition Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        ILocationRecognition := APIVersion;
        ILocationRecognition.LocationRecognition(localParameter, JsonResponse);
    end;

    procedure LocationRecognition(APIVersion: Enum "jdi BingMaps LocationRecognition API"; Parameter: Dictionary of [Enum "jdi BingMaps LocationRecognition Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        ILocationRecognition: Interface "jdi BingMaps ILocationRecognition";
        localParameter: Dictionary of [Enum "jdi BingMaps LocationRecognition Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        ILocationRecognition := APIVersion;
        ILocationRecognition.LocationRecognition(localParameter, HttpResponse);
    end;

    procedure LocationRecognition(APIVersion: Enum "jdi BingMaps LocationRecognition API"; Parameter: Dictionary of [Enum "jdi BingMaps LocationRecognition Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        ILocationRecognition: Interface "jdi BingMaps ILocationRecognition";
        localParameter: Dictionary of [Enum "jdi BingMaps LocationRecognition Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        ILocationRecognition := APIVersion;
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

    procedure LocalSearch(APIVersion: Enum "jdi BingMaps LocalSearch API"; Parameter: Dictionary of [Enum "jdi BingMaps LocalSearch Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        ILocalSearch: Interface "jdi BingMaps ILocalSearch";
        localParameter: Dictionary of [Enum "jdi BingMaps LocalSearch Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        ILocalSearch := APIVersion;
        ILocalSearch.LocalSearch(localParameter, JsonResponse);
    end;

    procedure LocalSearch(APIVersion: Enum "jdi BingMaps LocalSearch API"; Parameter: Dictionary of [Enum "jdi BingMaps LocalSearch Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        ILocalSearch: Interface "jdi BingMaps ILocalSearch";
        localParameter: Dictionary of [Enum "jdi BingMaps LocalSearch Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        ILocalSearch := APIVersion;
        ILocalSearch.LocalSearch(localParameter, HttpResponse);
    end;

    procedure LocalSearch(APIVersion: Enum "jdi BingMaps LocalSearch API"; Parameter: Dictionary of [Enum "jdi BingMaps LocalSearch Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        ILocalSearch: Interface "jdi BingMaps ILocalSearch";
        localParameter: Dictionary of [Enum "jdi BingMaps LocalSearch Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        ILocalSearch := APIVersion;
        ILocalSearch.LocalSearch(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps LocalSearch Parameter", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps LocalSearch Parameter", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps LocalSearch Parameter"];
        LocalSearchParameter: Enum "jdi BingMaps LocalSearch Parameter";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach LocalSearchParameter in ParamKeys do
            ParameterCopy.Add(LocalSearchParameter, Parameter.Get(LocalSearchParameter));
    end;
}