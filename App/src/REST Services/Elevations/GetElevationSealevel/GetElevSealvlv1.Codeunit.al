codeunit 50025 "jdi BingMaps GetElev.Sealvl v1" implements "jdi BingMaps IGetElevationSealevel"
{
    Access = Internal;
    procedure GetElevationSealevel(Parameter: Dictionary of [enum "jdi BingMaps Parameter GetElevationSealevel", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        UriBuilder: Codeunit "Uri Builder";
        Uri: Codeunit Uri;

        BaseUriLbl: Label 'https://dev.virtualearth.net/REST/v1/Elevation/Sealevel', Locked = true;
    begin
        UriBuilder.Init(BaseUriLbl);
        UriBuilder.SetQuery(GetQueryString(Parameter));
        UriBuilder.GetUri(Uri);
        exit(RESTHelper.InvokeWebRequest(Uri.GetAbsoluteUri(), HttpResponse));
    end;

    procedure GetElevationSealevel(Parameter: Dictionary of [enum "jdi BingMaps Parameter GetElevationSealevel", Text]; var JsonResponse: JsonObject): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
    begin
        GetElevationSealevel(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, JsonResponse));
    end;

    procedure GetElevationSealevel(Parameter: Dictionary of [enum "jdi BingMaps Parameter GetElevationSealevel", Text]; var XmlResponse: XmlDocument): Boolean;
    var
        RESTHelper: Codeunit "jdi BingMaps REST Helper";
        HttpResponse: HttpResponseMessage;
        GetElevationSealevelParameter: Enum "jdi BingMaps Parameter GetElevationSealevel";
    begin
        if not Parameter.ContainsKey(GetElevationSealevelParameter::output) then
            Parameter.Add(GetElevationSealevelParameter::output, 'xml');

        GetElevationSealevel(Parameter, HttpResponse);
        exit(RESTHelper.ProcessHttpResponseMessage(HttpResponse, XmlResponse));
    end;


    local procedure GetQueryString(Parameter: Dictionary of [enum "jdi BingMaps Parameter GetElevationSealevel", Text]): Text
    var
        ParamKeys: List of [Enum "jdi BingMaps Parameter GetElevationSealevel"];
        GetElevationSealevelParameter: Enum "jdi BingMaps Parameter GetElevationSealevel";
        TxtBuilder: TextBuilder;
    begin
        ParamKeys := Parameter.Keys;
        foreach GetElevationSealevelParameter in ParamKeys do
            TxtBuilder.Append(GetEnumName(GetElevationSealevelParameter) + '=' + Parameter.Get(GetElevationSealevelParameter) + '&');

        exit(TxtBuilder.ToText().TrimEnd('&'));
    end;

    local procedure GetEnumName(Parameter: Enum "jdi BingMaps Parameter GetElevationSealevel"): Text
    var
        OrdinalValue: Integer;
        Index: Integer;
    begin
        OrdinalValue := Parameter.AsInteger();
        Index := Parameter.Ordinals.IndexOf(OrdinalValue);
        exit(Parameter.Names.Get(Index));
    end;

}