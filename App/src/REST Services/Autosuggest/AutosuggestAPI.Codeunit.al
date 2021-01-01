codeunit 50008 "jdi BingMaps Autosuggest API"
{
    Access = Public;
    procedure Autosuggest(APIVersion: Enum "jdi BingMaps Autosuggest API"; Parameter: Dictionary of [Enum "jdi BingMaps Autosuggest Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IAutosuggest: Interface "jdi BingMaps IAutosuggest";
        localParameter: Dictionary of [Enum "jdi BingMaps Autosuggest Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IAutosuggest := APIVersion;
        IAutosuggest.Autosuggest(localParameter, JsonResponse);
    end;

    procedure Autosuggest(APIVersion: Enum "jdi BingMaps Autosuggest API"; Parameter: Dictionary of [Enum "jdi BingMaps Autosuggest Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IAutosuggest: Interface "jdi BingMaps IAutosuggest";
        localParameter: Dictionary of [Enum "jdi BingMaps Autosuggest Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IAutosuggest := APIVersion;
        IAutosuggest.Autosuggest(localParameter, HttpResponse);
    end;

    procedure Autosuggest(APIVersion: Enum "jdi BingMaps Autosuggest API"; Parameter: Dictionary of [Enum "jdi BingMaps Autosuggest Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IAutosuggest: Interface "jdi BingMaps IAutosuggest";
        localParameter: Dictionary of [Enum "jdi BingMaps Autosuggest Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IAutosuggest := APIVersion;
        IAutosuggest.Autosuggest(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps Autosuggest Parameter", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps Autosuggest Parameter", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps Autosuggest Parameter"];
        AutosuggestParameter: Enum "jdi BingMaps Autosuggest Parameter";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach AutosuggestParameter in ParamKeys do
            ParameterCopy.Add(AutosuggestParameter, Parameter.Get(AutosuggestParameter));
    end;
}