codeunit 50015 "jdi BingMaps REST Helper"
{
    Access = Public;

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
        if Response.Content().ReadAs(Result) then
            ResponseJObject.ReadFrom(Result);

        exit(Response.IsSuccessStatusCode());
    end;

    procedure ProcessHttpResponseMessage(Response: HttpResponseMessage; var ResponseXml: XmlDocument): Boolean;
    var
        InStr: InStream;
    begin
        Clear(ResponseXml);
        if (Response.Content().ReadAs(InStr)) then
            XmlDocument.ReadFrom(InStr, ResponseXml);

        exit(Response.IsSuccessStatusCode());
    end;
}