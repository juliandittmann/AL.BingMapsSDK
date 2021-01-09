codeunit 50208 "jdi BingMaps Test Elevation v1"
{
    Subtype = Test;
    TestPermissions = Disabled;

    [Test]
    procedure TestGetElevationListWithHttp()
    var
        ElevationsAPI: Codeunit "jdi BingMaps API Elevations";
        JResponse: JsonObject;
        HttpResponse: HttpResponseMessage;

        APIVersion: Enum "jdi BingMaps API GetElevationList";
        Param: Dictionary of [Enum "jdi BingMaps Parameter GetElevationList", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-GetElevationList using the HttpResponse overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateGetElevationListParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(ElevationsAPI.GetElevationList(APIVersion::v1, Param, HttpResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.AreEqual(401, HttpResponse.HttpStatusCode(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestGetElevationListWithJson()
    var
        ElevationsAPI: Codeunit "jdi BingMaps API Elevations";
        JResponse: JsonObject;
        StatusToken: JsonToken;

        APIVersion: Enum "jdi BingMaps API GetElevationList";
        Param: Dictionary of [Enum "jdi BingMaps Parameter GetElevationList", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-GetElevationList using the JsonObject overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateGetElevationListParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(ElevationsAPI.GetElevationList(APIVersion::v1, Param, JResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(JResponse.Get('statusCode', StatusToken), 'JResponse should contain statusCode');
        Assert.AreEqual(401, StatusToken.AsValue().AsInteger(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestGetElevationListWithXml()
    var
        ElevationsAPI: Codeunit "jdi BingMaps API Elevations";
        XmlResponse: XmlDocument;
        StatusCodeNode: XmlNode;

        APIVersion: Enum "jdi BingMaps API GetElevationList";
        Param: Dictionary of [Enum "jdi BingMaps Parameter GetElevationList", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-GetElevationList using the HttpResponse overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateGetElevationListParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(ElevationsAPI.GetElevationList(APIVersion::v1, Param, XmlResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(XmlResponse.SelectSingleNode(GetNodeXPath('StatusCode'), StatusCodeNode), 'XmlResponse should contain StatusCode node');
        Assert.AreEqual('401', StatusCodeNode.AsXmlElement().InnerText(), 'BingMaps Rest API should be StatusCode:401');
    end;

    local procedure CreateGetElevationListParam(var Param: Dictionary of [Enum "jdi BingMaps Parameter GetElevationList", Text])
    var
        GetElevationListParam: Enum "jdi BingMaps Parameter GetElevationList";
    begin
        Clear(Param);
        Param.Add(GetElevationListParam::points, '35.89431,-110.72522,35.89393,-110.72578,35.89374,-110.72606,35.89337,-110.72662');
        Param.Add(GetElevationListParam::"key", InvalidBingMapsAPIKey);
    end;

    [Test]
    procedure TestGetElevationBoundsWithHttp()
    var
        ElevationsAPI: Codeunit "jdi BingMaps API Elevations";
        JResponse: JsonObject;
        HttpResponse: HttpResponseMessage;

        APIVersion: Enum "jdi BingMaps API GetElevationBounds";
        Param: Dictionary of [Enum "jdi BingMaps Parameter GetElevationBounds", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-GetElevationBounds using the HttpResponse overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateGetElevationBoundsParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(ElevationsAPI.GetElevationBounds(APIVersion::v1, Param, HttpResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.AreEqual(401, HttpResponse.HttpStatusCode(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestGetElevationBoundsWithJson()
    var
        ElevationsAPI: Codeunit "jdi BingMaps API Elevations";
        JResponse: JsonObject;
        StatusToken: JsonToken;

        APIVersion: Enum "jdi BingMaps API GetElevationBounds";
        Param: Dictionary of [Enum "jdi BingMaps Parameter GetElevationBounds", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-GetElevationBounds using the JsonObject overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateGetElevationBoundsParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(ElevationsAPI.GetElevationBounds(APIVersion::v1, Param, JResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(JResponse.Get('statusCode', StatusToken), 'JResponse should contain statusCode');
        Assert.AreEqual(401, StatusToken.AsValue().AsInteger(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestGetElevationBoundsWithXml()
    var
        ElevationsAPI: Codeunit "jdi BingMaps API Elevations";
        XmlResponse: XmlDocument;
        StatusCodeNode: XmlNode;

        APIVersion: Enum "jdi BingMaps API GetElevationBounds";
        Param: Dictionary of [Enum "jdi BingMaps Parameter GetElevationBounds", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-GetElevationBounds using the HttpResponse overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateGetElevationBoundsParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(ElevationsAPI.GetElevationBounds(APIVersion::v1, Param, XmlResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(XmlResponse.SelectSingleNode(GetNodeXPath('StatusCode'), StatusCodeNode), 'XmlResponse should contain StatusCode node');
        Assert.AreEqual('401', StatusCodeNode.AsXmlElement().InnerText(), 'BingMaps Rest API should be StatusCode:401');
    end;

    local procedure CreateGetElevationBoundsParam(var Param: Dictionary of [Enum "jdi BingMaps Parameter GetElevationBounds", Text])
    var
        GetElevationBoundsParam: Enum "jdi BingMaps Parameter GetElevationBounds";
    begin
        Clear(Param);
        Param.Add(GetElevationBoundsParam::bounds, '50.995391,-1.320763,51.000577,-1.311836');
        Param.Add(GetElevationBoundsParam::rows, '4');
        Param.Add(GetElevationBoundsParam::cols, '4');
        Param.Add(GetElevationBoundsParam::"key", InvalidBingMapsAPIKey);
    end;

    [Test]
    procedure TestGetElevationPolylineWithHttp()
    var
        ElevationsAPI: Codeunit "jdi BingMaps API Elevations";
        JResponse: JsonObject;
        HttpResponse: HttpResponseMessage;

        APIVersion: Enum "jdi BingMaps API GetElevationPolyline";
        Param: Dictionary of [Enum "jdi BingMaps Parameter GetElevationPolyline", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-GetElevationPolyline using the HttpResponse overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateGetElevationPolylineParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(ElevationsAPI.GetElevationPolyline(APIVersion::v1, Param, HttpResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.AreEqual(401, HttpResponse.HttpStatusCode(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestGetElevationPolylineWithJson()
    var
        ElevationsAPI: Codeunit "jdi BingMaps API Elevations";
        JResponse: JsonObject;
        StatusToken: JsonToken;

        APIVersion: Enum "jdi BingMaps API GetElevationPolyline";
        Param: Dictionary of [Enum "jdi BingMaps Parameter GetElevationPolyline", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-GetElevationPolyline using the JsonObject overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateGetElevationPolylineParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(ElevationsAPI.GetElevationPolyline(APIVersion::v1, Param, JResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(JResponse.Get('statusCode', StatusToken), 'JResponse should contain statusCode');
        Assert.AreEqual(401, StatusToken.AsValue().AsInteger(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestGetElevationPolylineWithXml()
    var
        ElevationsAPI: Codeunit "jdi BingMaps API Elevations";
        XmlResponse: XmlDocument;
        StatusCodeNode: XmlNode;

        APIVersion: Enum "jdi BingMaps API GetElevationPolyline";
        Param: Dictionary of [Enum "jdi BingMaps Parameter GetElevationPolyline", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-GetElevationPolyline using the HttpResponse overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateGetElevationPolylineParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(ElevationsAPI.GetElevationPolyline(APIVersion::v1, Param, XmlResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(XmlResponse.SelectSingleNode(GetNodeXPath('StatusCode'), StatusCodeNode), 'XmlResponse should contain StatusCode node');
        Assert.AreEqual('401', StatusCodeNode.AsXmlElement().InnerText(), 'BingMaps Rest API should be StatusCode:401');
    end;

    local procedure CreateGetElevationPolylineParam(var Param: Dictionary of [Enum "jdi BingMaps Parameter GetElevationPolyline", Text])
    var
        GetElevationPolylineParam: Enum "jdi BingMaps Parameter GetElevationPolyline";
    begin
        Clear(Param);
        Param.Add(GetElevationPolylineParam::points, '35.89431,-110.72522,35.89393,-110.72578,35.89374,-110.72606,35.89337,-110.72662');
        Param.Add(GetElevationPolylineParam::heights, 'ellipsoid');
        Param.Add(GetElevationPolylineParam::samples, '10');
        Param.Add(GetElevationPolylineParam::"key", InvalidBingMapsAPIKey);
    end;

    [Test]
    procedure TestGetElevationSealevelWithHttp()
    var
        ElevationsAPI: Codeunit "jdi BingMaps API Elevations";
        JResponse: JsonObject;
        HttpResponse: HttpResponseMessage;

        APIVersion: Enum "jdi BingMaps API GetElevationSealevel";
        Param: Dictionary of [Enum "jdi BingMaps Parameter GetElevationSealevel", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-GetElevationSealevel using the HttpResponse overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateGetElevationSealevelParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(ElevationsAPI.GetElevationSealevel(APIVersion::v1, Param, HttpResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.AreEqual(401, HttpResponse.HttpStatusCode(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestGetElevationSealevelWithJson()
    var
        ElevationsAPI: Codeunit "jdi BingMaps API Elevations";
        JResponse: JsonObject;
        StatusToken: JsonToken;

        APIVersion: Enum "jdi BingMaps API GetElevationSealevel";
        Param: Dictionary of [Enum "jdi BingMaps Parameter GetElevationSealevel", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-GetElevationSealevel using the JsonObject overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateGetElevationSealevelParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(ElevationsAPI.GetElevationSealevel(APIVersion::v1, Param, JResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(JResponse.Get('statusCode', StatusToken), 'JResponse should contain statusCode');
        Assert.AreEqual(401, StatusToken.AsValue().AsInteger(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestGetElevationSealevelWithXml()
    var
        ElevationsAPI: Codeunit "jdi BingMaps API Elevations";
        XmlResponse: XmlDocument;
        StatusCodeNode: XmlNode;

        APIVersion: Enum "jdi BingMaps API GetElevationSealevel";
        Param: Dictionary of [Enum "jdi BingMaps Parameter GetElevationSealevel", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-GetElevationSealevel using the HttpResponse overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateGetElevationSealevelParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(ElevationsAPI.GetElevationSealevel(APIVersion::v1, Param, XmlResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(XmlResponse.SelectSingleNode(GetNodeXPath('StatusCode'), StatusCodeNode), 'XmlResponse should contain StatusCode node');
        Assert.AreEqual('401', StatusCodeNode.AsXmlElement().InnerText(), 'BingMaps Rest API should be StatusCode:401');
    end;

    local procedure CreateGetElevationSealevelParam(var Param: Dictionary of [Enum "jdi BingMaps Parameter GetElevationSealevel", Text])
    var
        GetElevationSealevelParam: Enum "jdi BingMaps Parameter GetElevationSealevel";
    begin
        Clear(Param);
        Param.Add(GetElevationSealevelParam::points, '35.89431,-110.72522,35.89393,-110.72578,35.89374,-110.72606,35.89337,-110.72662');
        Param.Add(GetElevationSealevelParam::"key", InvalidBingMapsAPIKey);
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