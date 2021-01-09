codeunit 50203 "jdi BingMaps Test Location v1"
{
    Subtype = Test;
    TestPermissions = Disabled;

    [Test]
    procedure TestFindLocationByPointWithHttp()
    var
        LocationsAPI: Codeunit "jdi BingMaps API Locations";
        JResponse: JsonObject;
        HttpResponse: HttpResponseMessage;

        APIVersion: Enum "jdi BingMaps API FindLocationByPoint";
        Param: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByPoint", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-FindLocationByPoint using the HttpResponse overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateFindLocationByPointParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(LocationsAPI.FindLocationByPoint(APIVersion::v1, Param, HttpResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.AreEqual(401, HttpResponse.HttpStatusCode(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestFindLocationByPointWithJson()
    var
        LocationsAPI: Codeunit "jdi BingMaps API Locations";
        JResponse: JsonObject;
        StatusToken: JsonToken;
        test: Text;

        APIVersion: Enum "jdi BingMaps API FindLocationByPoint";
        Param: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByPoint", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-FindLocationByPoint using the JsonObject overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateFindLocationByPointParam(Param);

        //[Then] Verify Bing Maps response  
        //Assert.IsFalse(LocationsAPI.FindLocationByPoint(APIVersion::v1, Param, JResponse), 'BingMaps Rest API should not be StatusCode:200');
        LocationsAPI.FindLocationByPoint(APIVersion::v1, Param, JResponse);
        JResponse.WriteTo(test);
        Error(test);


        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(JResponse.Get('statusCode', StatusToken), 'JResponse should contain statusCode');
        Assert.AreEqual(401, StatusToken.AsValue().AsInteger(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestFindLocationByPointWithXml()
    var
        LocationsAPI: Codeunit "jdi BingMaps API Locations";
        XmlResponse: XmlDocument;
        StatusCodeNode: XmlNode;

        APIVersion: Enum "jdi BingMaps API FindLocationByPoint";
        Param: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByPoint", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-FindLocationByPoint using the HttpResponse overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateFindLocationByPointParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(LocationsAPI.FindLocationByPoint(APIVersion::v1, Param, XmlResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(XmlResponse.SelectSingleNode(GetNodeXPath('StatusCode'), StatusCodeNode), 'XmlResponse should contain StatusCode node');
        Assert.AreEqual('401', StatusCodeNode.AsXmlElement().InnerText(), 'BingMaps Rest API should be StatusCode:401');
    end;

    local procedure CreateFindLocationByPointParam(var Param: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByPoint", Text])
    var
        FindLocationByPointParam: Enum "jdi BingMaps Parameter FindLocationByPoint";
    begin
        Clear(Param);
        Param.Add(FindLocationByPointParam::point, '47.64054,-122.12934');
        Param.Add(FindLocationByPointParam::"key", InvalidBingMapsAPIKey);
    end;




    [Test]
    procedure TestFindLocationByQueryWithHttp()
    var
        LocationsAPI: Codeunit "jdi BingMaps API Locations";
        JResponse: JsonObject;
        HttpResponse: HttpResponseMessage;

        APIVersion: Enum "jdi BingMaps API FindLocationByQuery";
        Param: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByQuery", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-FindLocationByQuery using the HttpResponse overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateFindLocationByQueryParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(LocationsAPI.FindLocationByQuery(APIVersion::v1, Param, HttpResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.AreEqual(401, HttpResponse.HttpStatusCode(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestFindLocationByQueryWithJson()
    var
        LocationsAPI: Codeunit "jdi BingMaps API Locations";
        JResponse: JsonObject;
        StatusToken: JsonToken;

        APIVersion: Enum "jdi BingMaps API FindLocationByQuery";
        Param: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByQuery", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-FindLocationByQuery using the JsonObject overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateFindLocationByQueryParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(LocationsAPI.FindLocationByQuery(APIVersion::v1, Param, JResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(JResponse.Get('statusCode', StatusToken), 'JResponse should contain statusCode');
        Assert.AreEqual(401, StatusToken.AsValue().AsInteger(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestFindLocationByQueryWithXml()
    var
        LocationsAPI: Codeunit "jdi BingMaps API Locations";
        XmlResponse: XmlDocument;
        StatusCodeNode: XmlNode;

        APIVersion: Enum "jdi BingMaps API FindLocationByQuery";
        Param: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByQuery", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-FindLocationByQuery using the HttpResponse overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateFindLocationByQueryParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(LocationsAPI.FindLocationByQuery(APIVersion::v1, Param, XmlResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(XmlResponse.SelectSingleNode(GetNodeXPath('StatusCode'), StatusCodeNode), 'XmlResponse should contain StatusCode node');
        Assert.AreEqual('401', StatusCodeNode.AsXmlElement().InnerText(), 'BingMaps Rest API should be StatusCode:401');
    end;

    local procedure CreateFindLocationByQueryParam(var Param: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByQuery", Text])
    var
        FindLocationByQueryParam: Enum "jdi BingMaps Parameter FindLocationByQuery";
    begin
        Clear(Param);
        Param.Add(FindLocationByQueryParam::query, 'White House');
        Param.Add(FindLocationByQueryParam::"key", InvalidBingMapsAPIKey);
    end;







    [Test]
    procedure TestLocationRecognitionWithHttp()
    var
        LocationsAPI: Codeunit "jdi BingMaps API Locations";
        JResponse: JsonObject;
        HttpResponse: HttpResponseMessage;

        APIVersion: Enum "jdi BingMaps API LocationRecognition";
        Param: Dictionary of [Enum "jdi BingMaps Parameter LocationRecognition", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-LocationRecognition using the HttpResponse overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateLocationRecognitionParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(LocationsAPI.LocationRecognition(APIVersion::v1, Param, HttpResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.AreEqual(401, HttpResponse.HttpStatusCode(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestLocationRecognitionWithJson()
    var
        LocationsAPI: Codeunit "jdi BingMaps API Locations";
        JResponse: JsonObject;
        StatusToken: JsonToken;

        APIVersion: Enum "jdi BingMaps API LocationRecognition";
        Param: Dictionary of [Enum "jdi BingMaps Parameter LocationRecognition", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-LocationRecognition using the JsonObject overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateLocationRecognitionParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(LocationsAPI.LocationRecognition(APIVersion::v1, Param, JResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(JResponse.Get('statusCode', StatusToken), 'JResponse should contain statusCode');
        Assert.AreEqual(401, StatusToken.AsValue().AsInteger(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestLocationRecognitionWithXml()
    var
        LocationsAPI: Codeunit "jdi BingMaps API Locations";
        XmlResponse: XmlDocument;
        StatusCodeNode: XmlNode;

        APIVersion: Enum "jdi BingMaps API LocationRecognition";
        Param: Dictionary of [Enum "jdi BingMaps Parameter LocationRecognition", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-LocationRecognition using the HttpResponse overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateLocationRecognitionParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(LocationsAPI.LocationRecognition(APIVersion::v1, Param, XmlResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(XmlResponse.SelectSingleNode(GetNodeXPath('StatusCode'), StatusCodeNode), 'XmlResponse should contain StatusCode node');
        Assert.AreEqual('401', StatusCodeNode.AsXmlElement().InnerText(), 'BingMaps Rest API should be StatusCode:401');
    end;

    local procedure CreateLocationRecognitionParam(var Param: Dictionary of [Enum "jdi BingMaps Parameter LocationRecognition", Text])
    var
        LocationRecognitionParam: Enum "jdi BingMaps Parameter LocationRecognition";
    begin
        Clear(Param);
        Param.Add(LocationRecognitionParam::point, '47.610679194331169,-122.10788659751415');
        Param.Add(LocationRecognitionParam::"key", InvalidBingMapsAPIKey);
    end;



    [Test]
    procedure TestLocalSearchWithHttp()
    var
        LocationsAPI: Codeunit "jdi BingMaps API Locations";
        JResponse: JsonObject;
        HttpResponse: HttpResponseMessage;

        APIVersion: Enum "jdi BingMaps API LocalSearch";
        Param: Dictionary of [Enum "jdi BingMaps Parameter LocalSearch", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-LocalSearch using the HttpResponse overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateLocalSearchParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(LocationsAPI.LocalSearch(APIVersion::v1, Param, HttpResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.AreEqual(401, HttpResponse.HttpStatusCode(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestLocalSearchWithJson()
    var
        LocationsAPI: Codeunit "jdi BingMaps API Locations";
        JResponse: JsonObject;
        StatusToken: JsonToken;

        APIVersion: Enum "jdi BingMaps API LocalSearch";
        Param: Dictionary of [Enum "jdi BingMaps Parameter LocalSearch", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-LocalSearch using the JsonObject overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateLocalSearchParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(LocationsAPI.LocalSearch(APIVersion::v1, Param, JResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(JResponse.Get('statusCode', StatusToken), 'JResponse should contain statusCode');
        Assert.AreEqual(401, StatusToken.AsValue().AsInteger(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestLocalSearchWithXml()
    var
        LocationsAPI: Codeunit "jdi BingMaps API Locations";
        XmlResponse: XmlDocument;
        StatusCodeNode: XmlNode;

        APIVersion: Enum "jdi BingMaps API LocalSearch";
        Param: Dictionary of [Enum "jdi BingMaps Parameter LocalSearch", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-LocalSearch using the HttpResponse overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateLocalSearchParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(LocationsAPI.LocalSearch(APIVersion::v1, Param, XmlResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(XmlResponse.SelectSingleNode(GetNodeXPath('StatusCode'), StatusCodeNode), 'XmlResponse should contain StatusCode node');
        Assert.AreEqual('401', StatusCodeNode.AsXmlElement().InnerText(), 'BingMaps Rest API should be StatusCode:401');
    end;

    local procedure CreateLocalSearchParam(var Param: Dictionary of [Enum "jdi BingMaps Parameter LocalSearch", Text])
    var
        LocalSearchParam: Enum "jdi BingMaps Parameter LocalSearch";
    begin
        Clear(Param);
        Param.Add(LocalSearchParam::query, 'coffee');
        Param.Add(LocalSearchParam::userLocation, '47.602038,-122.333964');
        Param.Add(LocalSearchParam::"key", InvalidBingMapsAPIKey);
    end;



    [Test]
    procedure TestFindLocationByAddressWithHttp()
    var
        LocationsAPI: Codeunit "jdi BingMaps API Locations";
        JResponse: JsonObject;
        HttpResponse: HttpResponseMessage;

        APIVersion: Enum "jdi BingMaps API FindLocationByAddress";
        Param: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByAddress", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-FindLocationByAddress using the HttpResponse overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateFindLocationByAddressParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(LocationsAPI.FindLocationByAddress(APIVersion::v1, Param, HttpResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.AreEqual(401, HttpResponse.HttpStatusCode(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestFindLocationByAddressWithJson()
    var
        LocationsAPI: Codeunit "jdi BingMaps API Locations";
        JResponse: JsonObject;
        StatusToken: JsonToken;

        APIVersion: Enum "jdi BingMaps API FindLocationByAddress";
        Param: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByAddress", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-FindLocationByAddress using the JsonObject overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateFindLocationByAddressParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(LocationsAPI.FindLocationByAddress(APIVersion::v1, Param, JResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(JResponse.Get('statusCode', StatusToken), 'JResponse should contain statusCode');
        Assert.AreEqual(401, StatusToken.AsValue().AsInteger(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestFindLocationByAddressWithXml()
    var
        LocationsAPI: Codeunit "jdi BingMaps API Locations";
        XmlResponse: XmlDocument;
        StatusCodeNode: XmlNode;

        APIVersion: Enum "jdi BingMaps API FindLocationByAddress";
        Param: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByAddress", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-FindLocationByAddress using the HttpResponse overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateFindLocationByAddressParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(LocationsAPI.FindLocationByAddress(APIVersion::v1, Param, XmlResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(XmlResponse.SelectSingleNode(GetNodeXPath('StatusCode'), StatusCodeNode), 'XmlResponse should contain StatusCode node');
        Assert.AreEqual('401', StatusCodeNode.AsXmlElement().InnerText(), 'BingMaps Rest API should be StatusCode:401');
    end;

    local procedure CreateFindLocationByAddressParam(var Param: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByAddress", Text])
    var
        FindLocationByAddressParam: Enum "jdi BingMaps Parameter FindLocationByAddress";
    begin
        Clear(Param);
        Param.Add(FindLocationByAddressParam::adminDistrict, 'WA');
        Param.Add(FindLocationByAddressParam::locality, 'Seattle');
        Param.Add(FindLocationByAddressParam::postalCode, '98178');
        Param.Add(FindLocationByAddressParam::addressLine, '1 Microsoft Way');
        Param.Add(FindLocationByAddressParam::countryRegion, 'US');
        Param.Add(FindLocationByAddressParam::"key", InvalidBingMapsAPIKey);
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