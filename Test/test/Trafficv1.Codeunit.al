codeunit 50205 "jdi BingMaps Test Traffic v1"
{
    Subtype = Test;
    TestPermissions = Disabled;

    [Test]
    procedure TestGetTrafficIncidentsWithHttp()
    var
        TrafficAPI: Codeunit "jdi BingMaps API Traffic";
        JResponse: JsonObject;
        HttpResponse: HttpResponseMessage;

        APIVersion: Enum "jdi BingMaps API GetTrafficIncidents";
        Param: Dictionary of [Enum "jdi BingMaps Parameter GetTrafficIncidents", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-GetTrafficIncidents using the HttpResponse overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateGetTrafficIncidentsParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(TrafficAPI.GetTrafficIncidents(APIVersion::v1, Param, HttpResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.AreEqual(HttpResponse.HttpStatusCode(), 401, 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestGetTrafficIncidentsWithJson()
    var
        TrafficAPI: Codeunit "jdi BingMaps API Traffic";
        JResponse: JsonObject;
        StatusToken: JsonToken;

        APIVersion: Enum "jdi BingMaps API GetTrafficIncidents";
        Param: Dictionary of [Enum "jdi BingMaps Parameter GetTrafficIncidents", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-GetTrafficIncidents using the JsonObject overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateGetTrafficIncidentsParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(TrafficAPI.GetTrafficIncidents(APIVersion::v1, Param, JResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(JResponse.Get('statusCode', StatusToken), 'JResponse should contain statusCode');
        Assert.AreEqual(StatusToken.AsValue().AsInteger(), 401, 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestGetTrafficIncidentsWithXml()
    var
        TrafficAPI: Codeunit "jdi BingMaps API Traffic";
        XmlResponse: XmlDocument;
        StatusCodeNode: XmlNode;

        APIVersion: Enum "jdi BingMaps API GetTrafficIncidents";
        Param: Dictionary of [Enum "jdi BingMaps Parameter GetTrafficIncidents", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-GetTrafficIncidents using the HttpResponse overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateGetTrafficIncidentsParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(TrafficAPI.GetTrafficIncidents(APIVersion::v1, Param, XmlResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(XmlResponse.SelectSingleNode(GetNodeXPath('StatusCode'), StatusCodeNode), 'XmlResponse should contain StatusCode node');
        Assert.AreEqual(StatusCodeNode.AsXmlElement().InnerText(), '401', 'BingMaps Rest API should be StatusCode:401');
    end;

    local procedure CreateGetTrafficIncidentsParam(var Param: Dictionary of [Enum "jdi BingMaps Parameter GetTrafficIncidents", Text])
    var
        GetTrafficIncidentsParam: Enum "jdi BingMaps Parameter GetTrafficIncidents";
    begin
        Clear(Param);
        Param.Add(GetTrafficIncidentsParam::mapArea, '45.219,-122.325,47.610,-122.107');
        Param.Add(GetTrafficIncidentsParam::"key", InvalidBingMapsAPIKey);
    end;


    local procedure Inizialize()
    var
        BingMapsMgt: Codeunit "jdi BingMaps App Mgt.";
    begin
        if not Initialized then begin
            Initialized := true;
            BingMapsMgt.EnableWebserviceCallsInSandbox();
        end;
    end;

    procedure GetNodeXPath(NodeName: Text): Text
    begin
        exit(StrSubstNo('//*[local-name()="%1"]', NodeName))
    end;

    var
        Assert: Codeunit "Library Assert";
        LibraryLowerPermissions: Codeunit "Library - Lower Permissions";
        InvalidBingMapsAPIKey: Label 'xxxx-xxxx-xxxx-xxxxx', Locked = true;
        Initialized: Boolean;
}