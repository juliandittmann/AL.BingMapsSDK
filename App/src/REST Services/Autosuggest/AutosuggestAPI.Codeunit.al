codeunit 50008 "jdi BingMaps Autosuggest API"
{
    Access = Public;
    procedure Autosuggest(Parameter: Dictionary of [Enum "jdi BingMaps Autosuggest Parameter", Text]; var JsonResponse: JsonObject): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IAutosuggest: Interface "jdi BingMaps IAutosuggest";
        localParameter: Dictionary of [Enum "jdi BingMaps Autosuggest Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IAutosuggest := IVersion.Autosuggest();
        IAutosuggest.Autosuggest(localParameter, JsonResponse);
    end;

    procedure Autosuggest(Parameter: Dictionary of [Enum "jdi BingMaps Autosuggest Parameter", Text]; var HttpResponse: HttpResponseMessage): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IAutosuggest: Interface "jdi BingMaps IAutosuggest";

        localParameter: Dictionary of [Enum "jdi BingMaps Autosuggest Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IAutosuggest := IVersion.Autosuggest();
        IAutosuggest.Autosuggest(localParameter, HttpResponse);
    end;

    procedure Autosuggest(Parameter: Dictionary of [Enum "jdi BingMaps Autosuggest Parameter", Text]; var XmlResponse: XmlDocument): Boolean
    var
        IVersion: Interface "jdi BingMaps IVersion";
        IAutosuggest: Interface "jdi BingMaps IAutosuggest";

        localParameter: Dictionary of [Enum "jdi BingMaps Autosuggest Parameter", Text];
    begin
        CopyParameter(Parameter, localParameter);

        GetIVersion(IVersion);
        IAutosuggest := IVersion.Autosuggest();
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

    local procedure GetIVersion(var IVersion: Interface "jdi BingMaps IVersion") //TODO: Does not belong here
    var
        BingMapsSDKSetup: Record "jdi BingMaps Setup";
    begin
        BingMapsSDKSetup.Get();
        IVersion := BingMapsSDKSetup."API Version";
    end;
}