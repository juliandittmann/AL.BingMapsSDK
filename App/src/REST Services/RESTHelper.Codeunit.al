codeunit 50015 "jdi BingMaps REST Helper"
{
    Access = Internal;

    procedure InvokeWebRequest(Url: Text; var Response: HttpResponseMessage): Boolean
    var
        Client: HttpClient;
    begin
        exit(Client.Get(Url, Response));
    end;

    procedure ProcessHttpResponseMessage(Response: HttpResponseMessage; var ResponseJObject: JsonObject): Boolean;
    var
        Result: Text;
    begin
        Clear(ResponseJObject);
        if (Response.IsSuccessStatusCode()) then begin
            Response.Content().ReadAs(Result);
            exit(ResponseJObject.ReadFrom(Result));
        end;
    end;

    procedure ProcessHttpResponseMessage(Response: HttpResponseMessage; var ResponseXml: XmlDocument): Boolean;
    var
        InStr: InStream;
    begin
        Clear(ResponseXml);
        if (Response.IsSuccessStatusCode()) then begin
            Response.Content().ReadAs(InStr);

            exit(XmlDocument.ReadFrom(InStr, ResponseXml));
        end;
    end;


    procedure GetDefaultAPIKey(): Text //TODO: does not belong here 
    var
        BingMapsSetup: Record "jdi BingMaps Setup";
    begin
        if BingMapsSetup.Get() then
            exit(BingMapsSetup.GetDefaultAPIKey());
    end;

}