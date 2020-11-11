codeunit 50018 "jdi BingMaps LocalSearch v1" implements "jdi BingMaps ILocalSearch"
{
    procedure LocalSearch(Parameter: Dictionary of [enum "jdi BingMaps LocalSearch Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        UriBuilder: Codeunit "Uri Builder";
        Uri: Codeunit Uri;

        BaseUriLbl: Label 'https://dev.virtualearth.net/REST/v1/LocalSearch/', Locked = true;
    begin
        UriBuilder.Init(BaseUriLbl);
        UriBuilder.SetQuery(GetQueryString(Parameter));
        UriBuilder.GetUri(Uri);
        exit(RESTHelper.InvokeWebRequest(Uri.GetAbsoluteUri(), HttpResponse));
    end;

    procedure LocalSearch(Parameter: Dictionary of [enum "jdi BingMaps LocalSearch Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
    begin
        LocalSearch(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, JsonResponse));
    end;

    procedure LocalSearch(Parameter: Dictionary of [enum "jdi BingMaps LocalSearch Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
        LocationRecognitionParameter: Enum "jdi BingMaps LocalSearch Parameter";
    begin
        if not Parameter.ContainsKey(LocationRecognitionParameter::output) then
            Parameter.Add(LocationRecognitionParameter::output, 'xml');

        LocalSearch(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, XmlResponse));
    end;

    local procedure GetQueryString(Parameter: Dictionary of [enum "jdi BingMaps LocalSearch Parameter", Text]): Text
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        ParamKeys: List of [Enum "jdi BingMaps LocalSearch Parameter"];
        LocalSearchParameter: Enum "jdi BingMaps LocalSearch Parameter";
        TxtBuilder: TextBuilder;
    begin
        if not Parameter.ContainsKey(LocalSearchParameter::"key") then
            Parameter.Add(LocalSearchParameter::"key", RESTHelper.GetDefaultAPIKey());

        ParamKeys := Parameter.Keys;
        foreach LocalSearchParameter in ParamKeys do
            TxtBuilder.Append(GetEnumName(LocalSearchParameter) + '=' + Parameter.Get(LocalSearchParameter) + '&');

        exit(TxtBuilder.ToText().TrimEnd('&'));
    end;

    local procedure GetEnumName(Parameter: Enum "jdi BingMaps LocalSearch Parameter"): Text
    var
        OrdinalValue: Integer;
        Index: Integer;
    begin
        OrdinalValue := Parameter.AsInteger();
        Index := Parameter.Ordinals.IndexOf(OrdinalValue);
        exit(Parameter.Names.Get(Index));
    end;
}