codeunit 50020 "jdi BingMaps Autosuggest v1" implements "jdi BingMaps IAutosuggest"
{
    Access = Internal;
    procedure Autosuggest(Parameter: Dictionary of [enum "jdi BingMaps Parameter Autosuggest", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        UriBuilder: Codeunit "Uri Builder";
        Uri: Codeunit Uri;

        BaseUriLbl: Label 'https://dev.virtualearth.net/REST/v1/Autosuggest', Locked = true;
    begin
        UriBuilder.Init(BaseUriLbl);
        UriBuilder.SetQuery(GetQueryString(Parameter));
        UriBuilder.GetUri(Uri);
        RESTHelper.InvokeWebRequest(Uri.GetAbsoluteUri(), HttpResponse);
        exit(HttpResponse.IsSuccessStatusCode());
    end;

    procedure Autosuggest(Parameter: Dictionary of [enum "jdi BingMaps Parameter Autosuggest", Text]; var JsonResponse: JsonObject): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
    begin
        Autosuggest(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, JsonResponse));
    end;

    procedure Autosuggest(Parameter: Dictionary of [enum "jdi BingMaps Parameter Autosuggest", Text]; var XmlResponse: XmlDocument): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
        AutosuggestParameter: Enum "jdi BingMaps Parameter Autosuggest";
    begin
        if not Parameter.ContainsKey(AutosuggestParameter::output) then
            Parameter.Add(AutosuggestParameter::output, 'xml');

        Autosuggest(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, XmlResponse));
    end;

    local procedure GetQueryString(Parameter: Dictionary of [enum "jdi BingMaps Parameter Autosuggest", Text]): Text
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter Autosuggest"];
        AutosuggestParameter: Enum "jdi BingMaps Parameter Autosuggest";
        TxtBuilder: TextBuilder;
    begin
        ParamKeys := Parameter.Keys;
        foreach AutosuggestParameter in ParamKeys do
            TxtBuilder.Append(GetEnumName(AutosuggestParameter) + '=' + Parameter.Get(AutosuggestParameter) + '&');

        exit(TxtBuilder.ToText().TrimEnd('&'));
    end;

    local procedure GetEnumName(Parameter: Enum "jdi BingMaps Parameter Autosuggest"): Text
    var
        OrdinalValue: Integer;
        Index: Integer;
    begin
        OrdinalValue := Parameter.AsInteger();
        Index := Parameter.Ordinals.IndexOf(OrdinalValue);
        exit(Parameter.Names.Get(Index));
    end;
}