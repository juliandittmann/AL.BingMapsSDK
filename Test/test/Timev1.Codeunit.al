codeunit 50206 "jdi BingMaps Test Time v1"
{
    Subtype = Test;
    TestPermissions = Disabled;

    [Test]
    procedure TestFindTimeZoneWithHttp()
    var
        TimeZoneAPI: Codeunit "jdi BingMaps API TimeZone";
        JResponse: JsonObject;
        HttpResponse: HttpResponseMessage;

        APIVersion: Enum "jdi BingMaps API FindTimeZone";
        Param: Dictionary of [Enum "jdi BingMaps Parameter FindTimeZone", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-FindTimeZone using the HttpResponse overload
        // [Given]  O365BusFull Permissions
        Inizialize();

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateFindTimeZoneParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(TimeZoneAPI.FindTimeZone(APIVersion::v1, Param, HttpResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.AreEqual(401, HttpResponse.HttpStatusCode(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestFindTimeZoneWithJson()
    var
        TimeZoneAPI: Codeunit "jdi BingMaps API TimeZone";
        JResponse: JsonObject;
        StatusToken: JsonToken;

        APIVersion: Enum "jdi BingMaps API FindTimeZone";
        Param: Dictionary of [Enum "jdi BingMaps Parameter FindTimeZone", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-FindTimeZone using the JsonObject overload
        // [Given]  O365BusFull Permissions
        Inizialize();

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateFindTimeZoneParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(TimeZoneAPI.FindTimeZone(APIVersion::v1, Param, JResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(JResponse.Get('statusCode', StatusToken), 'JResponse should contain statusCode');
        Assert.AreEqual(401, StatusToken.AsValue().AsInteger(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestFindTimeZoneWithXml()
    var
        TimeZoneAPI: Codeunit "jdi BingMaps API TimeZone";
        XmlResponse: XmlDocument;
        StatusCodeNode: XmlNode;

        APIVersion: Enum "jdi BingMaps API FindTimeZone";
        Param: Dictionary of [Enum "jdi BingMaps Parameter FindTimeZone", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-FindTimeZone using the HttpResponse overload
        // [Given]  O365BusFull Permissions
        Inizialize();

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateFindTimeZoneParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(TimeZoneAPI.FindTimeZone(APIVersion::v1, Param, XmlResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(XmlResponse.SelectSingleNode(GetNodeXPath('StatusCode'), StatusCodeNode), 'XmlResponse should contain StatusCode node');
        Assert.AreEqual('401', StatusCodeNode.AsXmlElement().InnerText(), 'BingMaps Rest API should be StatusCode:401');
    end;

    local procedure CreateFindTimeZoneParam(var Param: Dictionary of [Enum "jdi BingMaps Parameter FindTimeZone", Text])
    var
        FindTimeZoneParam: Enum "jdi BingMaps Parameter FindTimeZone";
    begin
        Clear(Param);
        Param.Add(FindTimeZoneParam::point, '47,-122');
        Param.Add(FindTimeZoneParam::"key", InvalidBingMapsAPIKey);
    end;

    [Test]
    procedure TestConvertTimeZoneWithHttp()
    var
        TimeZoneAPI: Codeunit "jdi BingMaps API TimeZone";
        JResponse: JsonObject;
        HttpResponse: HttpResponseMessage;

        APIVersion: Enum "jdi BingMaps API ConvertTimeZone";
        Param: Dictionary of [Enum "jdi BingMaps Parameter ConvertTimeZone", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-ConvertTimeZone using the HttpResponse overload
        // [Given]  O365BusFull Permissions
        Inizialize();

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateConvertTimeZoneParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(TimeZoneAPI.ConvertTimeZone(APIVersion::v1, Param, HttpResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.AreEqual(401, HttpResponse.HttpStatusCode(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestConvertTimeZoneWithJson()
    var
        TimeZoneAPI: Codeunit "jdi BingMaps API TimeZone";
        JResponse: JsonObject;
        StatusToken: JsonToken;

        APIVersion: Enum "jdi BingMaps API ConvertTimeZone";
        Param: Dictionary of [Enum "jdi BingMaps Parameter ConvertTimeZone", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-ConvertTimeZone using the JsonObject overload
        // [Given]  O365BusFull Permissions
        Inizialize();

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateConvertTimeZoneParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(TimeZoneAPI.ConvertTimeZone(APIVersion::v1, Param, JResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(JResponse.Get('statusCode', StatusToken), 'JResponse should contain statusCode');
        Assert.AreEqual(401, StatusToken.AsValue().AsInteger(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestConvertTimeZoneWithXml()
    var
        TimeZoneAPI: Codeunit "jdi BingMaps API TimeZone";
        XmlResponse: XmlDocument;
        StatusCodeNode: XmlNode;

        APIVersion: Enum "jdi BingMaps API ConvertTimeZone";
        Param: Dictionary of [Enum "jdi BingMaps Parameter ConvertTimeZone", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-ConvertTimeZone using the HttpResponse overload
        // [Given]  O365BusFull Permissions
        Inizialize();

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateConvertTimeZoneParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(TimeZoneAPI.ConvertTimeZone(APIVersion::v1, Param, XmlResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(XmlResponse.SelectSingleNode(GetNodeXPath('StatusCode'), StatusCodeNode), 'XmlResponse should contain StatusCode node');
        Assert.AreEqual('401', StatusCodeNode.AsXmlElement().InnerText(), 'BingMaps Rest API should be StatusCode:401');
    end;

    local procedure CreateConvertTimeZoneParam(var Param: Dictionary of [Enum "jdi BingMaps Parameter ConvertTimeZone", Text])
    var
        ConvertTimeZoneParam: Enum "jdi BingMaps Parameter ConvertTimeZone";
    begin
        Clear(Param);
        Param.Add(ConvertTimeZoneParam::dateTime, '2018-05-15T13:14:15Z');
        Param.Add(ConvertTimeZoneParam::desttz, 'america/Los_Angeles');
        Param.Add(ConvertTimeZoneParam::"key", InvalidBingMapsAPIKey);
    end;

    [Test]
    procedure TestListTimeZonesWithHttp()
    var
        TimeZoneAPI: Codeunit "jdi BingMaps API TimeZone";
        JResponse: JsonObject;
        HttpResponse: HttpResponseMessage;

        APIVersion: Enum "jdi BingMaps API ListTimeZones";
        Param: Dictionary of [Enum "jdi BingMaps Parameter ListTimeZones", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-ListTimeZones using the HttpResponse overload
        // [Given]  O365BusFull Permissions
        Inizialize();

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateListTimeZonesParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(TimeZoneAPI.ListTimeZones(APIVersion::v1, Param, HttpResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.AreEqual(401, HttpResponse.HttpStatusCode(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestListTimeZonesWithJson()
    var
        TimeZoneAPI: Codeunit "jdi BingMaps API TimeZone";
        JResponse: JsonObject;
        StatusToken: JsonToken;

        APIVersion: Enum "jdi BingMaps API ListTimeZones";
        Param: Dictionary of [Enum "jdi BingMaps Parameter ListTimeZones", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-ListTimeZones using the JsonObject overload
        // [Given]  O365BusFull Permissions
        Inizialize();

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateListTimeZonesParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(TimeZoneAPI.ListTimeZones(APIVersion::v1, Param, JResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(JResponse.Get('statusCode', StatusToken), 'JResponse should contain statusCode');
        Assert.AreEqual(401, StatusToken.AsValue().AsInteger(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestListTimeZonesWithXml()
    var
        TimeZoneAPI: Codeunit "jdi BingMaps API TimeZone";
        XmlResponse: XmlDocument;
        StatusCodeNode: XmlNode;

        APIVersion: Enum "jdi BingMaps API ListTimeZones";
        Param: Dictionary of [Enum "jdi BingMaps Parameter ListTimeZones", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-ListTimeZones using the HttpResponse overload
        // [Given]  O365BusFull Permissions
        Inizialize();

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateListTimeZonesParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(TimeZoneAPI.ListTimeZones(APIVersion::v1, Param, XmlResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(XmlResponse.SelectSingleNode(GetNodeXPath('StatusCode'), StatusCodeNode), 'XmlResponse should contain StatusCode node');
        Assert.AreEqual('401', StatusCodeNode.AsXmlElement().InnerText(), 'BingMaps Rest API should be StatusCode:401');
    end;

    local procedure CreateListTimeZonesParam(var Param: Dictionary of [Enum "jdi BingMaps Parameter ListTimeZones", Text])
    var
        ListTimeZonesParam: Enum "jdi BingMaps Parameter ListTimeZones";
    begin
        Clear(Param);
        Param.Add(ListTimeZonesParam::timezonestandard, 'Windows');
        Param.Add(ListTimeZonesParam::"key", InvalidBingMapsAPIKey);
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