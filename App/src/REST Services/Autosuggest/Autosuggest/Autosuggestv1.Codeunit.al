codeunit 50020 "jdi BingMaps Autosuggest v1" implements "jdi BingMaps IAutosuggest"
{
    procedure Autosuggest(Parameter: Dictionary of [enum "jdi BingMaps Autosuggest Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        UriBuilder: Codeunit "Uri Builder";
        Uri: Codeunit Uri;

        BaseUriLbl: Label 'https://dev.virtualearth.net/REST/v1/Autosuggest', Locked = true;
    begin
        UriBuilder.Init(BaseUriLbl);
        UriBuilder.SetQuery(GetQueryString(Parameter));
        UriBuilder.GetUri(Uri);
        exit(RESTHelper.InvokeWebRequest(Uri.GetAbsoluteUri(), HttpResponse));
    end;

    procedure Autosuggest(Parameter: Dictionary of [enum "jdi BingMaps Autosuggest Parameter", Text]; var JsonResponse: JsonObject): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
    begin
        Autosuggest(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, JsonResponse));
    end;

    procedure Autosuggest(Parameter: Dictionary of [enum "jdi BingMaps Autosuggest Parameter", Text]; var XmlResponse: XmlDocument): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
        AutosuggestParameter: Enum "jdi BingMaps Autosuggest Parameter";
    begin
        if not Parameter.ContainsKey(AutosuggestParameter::output) then
            Parameter.Add(AutosuggestParameter::output, 'xml');

        Autosuggest(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, XmlResponse));
    end;

    local procedure GetQueryString(Parameter: Dictionary of [enum "jdi BingMaps Autosuggest Parameter", Text]): Text
    var
        ParamKeys: List of [Enum "jdi BingMaps Autosuggest Parameter"];
        AutosuggestParameter: Enum "jdi BingMaps Autosuggest Parameter";
        TxtBuilder: TextBuilder;
    begin
        ParamKeys := Parameter.Keys;
        foreach AutosuggestParameter in ParamKeys do
            TxtBuilder.Append(GetEnumName(AutosuggestParameter) + '=' + Parameter.Get(AutosuggestParameter) + '&');

        exit(TxtBuilder.ToText().TrimEnd('&'));
    end;

    local procedure GetEnumName(Parameter: Enum "jdi BingMaps Autosuggest Parameter"): Text
    var
        OrdinalValue: Integer;
        Index: Integer;
    begin
        OrdinalValue := Parameter.AsInteger();
        Index := Parameter.Ordinals.IndexOf(OrdinalValue);
        exit(Parameter.Names.Get(Index));
    end;
}