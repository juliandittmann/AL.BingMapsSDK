codeunit 50008 "jdi BingMaps API Autosuggest"
{
    Access = Public;
    procedure Autosuggest(APIVersion: Enum "jdi BingMaps API Autosuggest"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter Autosuggest", Text]; var JsonResponse: JsonObject): Boolean
    var
        IAutosuggest: Interface "jdi BingMaps IAutosuggest";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter Autosuggest", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IAutosuggest := APIVersion;
        IAutosuggest.Autosuggest(localParameter, JsonResponse);
    end;

    procedure Autosuggest(APIVersion: Enum "jdi BingMaps API Autosuggest"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter Autosuggest", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IAutosuggest: Interface "jdi BingMaps IAutosuggest";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter Autosuggest", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IAutosuggest := APIVersion;
        IAutosuggest.Autosuggest(localParameter, HttpResponse);
    end;

    procedure Autosuggest(APIVersion: Enum "jdi BingMaps API Autosuggest"; Parameter: Dictionary of [Enum "jdi BingMaps Parameter Autosuggest", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IAutosuggest: Interface "jdi BingMaps IAutosuggest";
        localParameter: Dictionary of [Enum "jdi BingMaps Parameter Autosuggest", Text];
    begin
        CopyParameter(Parameter, localParameter);
        IAutosuggest := APIVersion;
        IAutosuggest.Autosuggest(localParameter, XmlResponse);
    end;

    local procedure CopyParameter(Parameter: Dictionary of [enum "jdi BingMaps Parameter Autosuggest", Text]; var ParameterCopy: Dictionary of [enum "jdi BingMaps Parameter Autosuggest", Text]);
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter Autosuggest"];
        AutosuggestParameter: Enum "jdi BingMaps Parameter Autosuggest";
    begin
        Clear(ParameterCopy);
        ParamKeys := Parameter.Keys;
        foreach AutosuggestParameter in ParamKeys do
            ParameterCopy.Add(AutosuggestParameter, Parameter.Get(AutosuggestParameter));
    end;
}