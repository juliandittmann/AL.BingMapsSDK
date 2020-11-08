codeunit 50007 "jdi BingMaps Time Zone API"
{
    procedure FindTimeZoneByPoint(Point: Text; var ResponseJObject: JsonObject): Boolean
    var
        Response: HttpResponseMessage;
        Url1Txt: Label 'https://dev.virtualearth.net/REST/v1/TimeZone/%1?&key=%2', Locked = true;
        Url: Text;
    begin
        Url := StrSubstNo(Url1Txt, Point, GetDefaultAPIKey());
        InvokeWebRequest(Url, Response);
        exit(ProcessHttpResponseMessage(Response, ResponseJObject));
    end;

    procedure FindTimeZoneByPoint(Point: Text; DatetimeUTC: Text; var ResponseJObject: JsonObject): Boolean
    var
        Response: HttpResponseMessage;
        Url2Txt: Label 'https://dev.virtualearth.net/REST/v1/TimeZone/%1?datetime=%2&key=%3', Locked = true;
        Url: Text;
    begin
        Url := StrSubstNo(Url2Txt, Point, DatetimeUTC, GetDefaultAPIKey());
        InvokeWebRequest(Url, Response);
        exit(ProcessHttpResponseMessage(Response, ResponseJObject));
    end;

    procedure FindTimeZoneByPoint(Point: Text; var XmlResponse: XmlDocument): Boolean
    var
        Response: HttpResponseMessage;
        Url3Txt: Label 'https://dev.virtualearth.net/REST/v1/TimeZone/%1?output=xml&key=%2', Locked = true;
        Url: Text;
    begin
        Url := StrSubstNo(Url3Txt, Point, GetDefaultAPIKey());
        InvokeWebRequest(Url, Response);
        exit(ProcessHttpResponseMessage(Response, XmlResponse));
    end;


    procedure FindTimeZoneByPoint(Point: Text; DatetimeUTC: Text; var XmlResponse: XmlDocument): Boolean
    var
        Response: HttpResponseMessage;
        Url4Txt: Label 'https://dev.virtualearth.net/REST/v1/TimeZone/%1?datetime=%2&output=xml&key=%3', Locked = true;
        Url: Text;
    begin
        Url := StrSubstNo(Url4Txt, Point, DatetimeUTC, GetDefaultAPIKey());
        InvokeWebRequest(Url, Response);
        exit(ProcessHttpResponseMessage(Response, XmlResponse));
    end;






    procedure FindTimeZoneByQuery(Query: Text; var ResponseJObject: JsonObject): Boolean
    var
        Response: HttpResponseMessage;
        Url5Txt: Label 'https://dev.virtualearth.net/REST/v1/TimeZone/?query=%1&key=%2', Locked = true;
        Url: Text;
    begin
        Url := StrSubstNo(Url5Txt, Query, GetDefaultAPIKey());
        InvokeWebRequest(Url, Response);
        exit(ProcessHttpResponseMessage(Response, ResponseJObject));
    end;

    procedure FindTimeZoneByQuery(Query: Text; DatetimeUtc: Text; var ResponseJObject: JsonObject): Boolean
    var
        Response: HttpResponseMessage;
        Url6Txt: Label 'https://dev.virtualearth.net/REST/v1/TimeZone/?query=%1$datetime=%2&key=%3', Locked = true;
        Url: Text;
    begin
        Url := StrSubstNo(Url6Txt, Query, DatetimeUTC, GetDefaultAPIKey());
        InvokeWebRequest(Url, Response);
        exit(ProcessHttpResponseMessage(Response, ResponseJObject));
    end;


    procedure FindTimeZoneByQuery(Query: Text; var XmlResponse: XmlDocument): Boolean
    var
        Response: HttpResponseMessage;
        Url7Txt: Label 'https://dev.virtualearth.net/REST/v1/TimeZone/?query=%1&output=xml&key=%2', Locked = true;
        Url: Text;
    begin
        Url := StrSubstNo(Url7Txt, Query, GetDefaultAPIKey());
        InvokeWebRequest(Url, Response);
        exit(ProcessHttpResponseMessage(Response, XmlResponse));
    end;


    procedure FindTimeZoneByQuery(Query: Text; DatetimeUtc: Text; var XmlResponse: XmlDocument): Boolean
    var
        Response: HttpResponseMessage;
        Url8Txt: Label 'https://dev.virtualearth.net/REST/v1/TimeZone/?query=%1&datetime=%2&output=xml&key=%3', Locked = true;
        Url: Text;
    begin
        Url := StrSubstNo(Url8Txt, Query, DatetimeUtc, GetDefaultAPIKey());
        InvokeWebRequest(Url, Response);
        exit(ProcessHttpResponseMessage(Response, XmlResponse));
    end;

    local procedure InvokeWebRequest(Url: Text; var Response: HttpResponseMessage): Boolean
    var
        Client: HttpClient;
    begin
        exit(Client.Get(Url, Response));
    end;

    local procedure ProcessHttpResponseMessage(Response: HttpResponseMessage; var ResponseJObject: JsonObject): Boolean;
    var
        Result: Text;
    begin
        Clear(ResponseJObject);
        if (Response.IsSuccessStatusCode()) then begin
            Response.Content().ReadAs(Result);
            exit(ResponseJObject.ReadFrom(Result));
        end;
    end;

    local procedure ProcessHttpResponseMessage(Response: HttpResponseMessage; var ResponseXml: XmlDocument): Boolean;
    var
        InStr: InStream;
    begin
        Clear(ResponseXml);
        if (Response.IsSuccessStatusCode()) then begin
            Response.Content().ReadAs(InStr);

            exit(XmlDocument.ReadFrom(InStr, ResponseXml));
        end;
    end;

    local procedure GetUrl(): Text
    var
        UrlTxt: Label 'https://dev.virtualearth.net/REST/v1/TimeZone/%1?datetime=%2&key=%3', Locked = true;
    begin
        //TODO: 
    end;





    local procedure GetAPIEndpoint(): Text
    var
        APIEndpointUrl: Label 'https://dev.virtualearth.net/REST/v1/TimeZone/', Locked = true;
    begin
        exit(APIEndpointUrl);
    end;

    local procedure GetDefaultAPIKey(): Text
    var
        BingMapsSetup: Record "jdi BingMaps Setup";
    begin
        if BingMapsSetup.Get() then
            exit(BingMapsSetup.GetDefaultAPIKey());
    end;
}