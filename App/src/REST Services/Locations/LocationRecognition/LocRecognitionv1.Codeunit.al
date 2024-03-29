codeunit 50017 "jdi BingMaps LocRecognition v1" implements "jdi BingMaps ILocationRecognition"
{
    Access = Internal;
    procedure LocationRecognition(Parameter: Dictionary of [enum "jdi BingMaps Parameter LocationRecognition", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        UriBuilder: Codeunit "Uri Builder";
        Uri: Codeunit Uri;
    begin
        UriBuilder.Init(BuildBaseUrl(Parameter));
        UriBuilder.SetQuery(GetQueryString(Parameter));
        UriBuilder.GetUri(Uri);
        RESTHelper.InvokeWebRequest(Uri.GetAbsoluteUri(), HttpResponse);
        exit(HttpResponse.IsSuccessStatusCode());
    end;

    procedure LocationRecognition(Parameter: Dictionary of [enum "jdi BingMaps Parameter LocationRecognition", Text]; var JsonResponse: JsonObject): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
    begin
        LocationRecognition(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, JsonResponse));
    end;

    procedure LocationRecognition(Parameter: Dictionary of [enum "jdi BingMaps Parameter LocationRecognition", Text]; var XmlResponse: XmlDocument): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
        LocationRecognitionParameter: Enum "jdi BingMaps Parameter LocationRecognition";
    begin
        if not Parameter.ContainsKey(LocationRecognitionParameter::output) then
            Parameter.Add(LocationRecognitionParameter::output, 'xml');

        LocationRecognition(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, XmlResponse));
    end;

    local procedure BuildBaseUrl(Parameter: Dictionary of [enum "jdi BingMaps Parameter LocationRecognition", Text]) BaseUrl: Text
    var
        LocationRecognitionParamenter: Enum "jdi BingMaps Parameter LocationRecognition";

        BaseUriLbl: Label 'https://dev.virtualearth.net/REST/v1/LocationRecog/%1', Locked = true;
    begin
        if Parameter.ContainsKey(LocationRecognitionParamenter::point) then begin
            BaseUrl := StrSubstNo(BaseUriLbl, Parameter.Get(LocationRecognitionParamenter::point));
            Parameter.Remove(LocationRecognitionParamenter::point);
        end;
    end;

    local procedure GetQueryString(Parameter: Dictionary of [enum "jdi BingMaps Parameter LocationRecognition", Text]): Text
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter LocationRecognition"];
        LocationRecognitionParameter: Enum "jdi BingMaps Parameter LocationRecognition";
        TxtBuilder: TextBuilder;
    begin
        ParamKeys := Parameter.Keys;
        foreach LocationRecognitionParameter in ParamKeys do
            TxtBuilder.Append(GetEnumName(LocationRecognitionParameter) + '=' + Parameter.Get(LocationRecognitionParameter) + '&');

        exit(TxtBuilder.ToText().TrimEnd('&'));
    end;

    local procedure GetEnumName(Parameter: Enum "jdi BingMaps Parameter LocationRecognition"): Text
    var
        OrdinalValue: Integer;
        Index: Integer;
    begin
        OrdinalValue := Parameter.AsInteger();
        Index := Parameter.Ordinals.IndexOf(OrdinalValue);
        exit(Parameter.Names.Get(Index));
    end;
}