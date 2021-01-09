codeunit 50207 "jdi BingMaps Test Routes v1"
{
    Subtype = Test;
    TestPermissions = Disabled;

    [Test]
    procedure TestCalculateRouteWithHttp()
    var
        RoutesAPI: Codeunit "jdi BingMaps API Routes";
        JResponse: JsonObject;
        HttpResponse: HttpResponseMessage;

        APIVersion: Enum "jdi BingMaps API CalculateRoute";
        Param: Dictionary of [Enum "jdi BingMaps Parameter CalculateRoute", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-CalculateRoute using the HttpResponse overload
        // [Given]  O365BusFull Permissions
        Inizialize();

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateCalculateRouteParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(RoutesAPI.CalculateRoute(APIVersion::v1, Param, HttpResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.AreEqual(401, HttpResponse.HttpStatusCode(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestCalculateRouteWithJson()
    var
        RoutesAPI: Codeunit "jdi BingMaps API Routes";
        JResponse: JsonObject;
        StatusToken: JsonToken;

        APIVersion: Enum "jdi BingMaps API CalculateRoute";
        Param: Dictionary of [Enum "jdi BingMaps Parameter CalculateRoute", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-CalculateRoute using the JsonObject overload
        // [Given]  O365BusFull Permissions
        Inizialize();

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateCalculateRouteParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(RoutesAPI.CalculateRoute(APIVersion::v1, Param, JResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(JResponse.Get('statusCode', StatusToken), 'JResponse should contain statusCode');
        Assert.AreEqual(401, StatusToken.AsValue().AsInteger(), 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestCalculateRouteWithXml()
    var
        RoutesAPI: Codeunit "jdi BingMaps API Routes";
        XmlResponse: XmlDocument;
        StatusCodeNode: XmlNode;

        APIVersion: Enum "jdi BingMaps API CalculateRoute";
        Param: Dictionary of [Enum "jdi BingMaps Parameter CalculateRoute", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-CalculateRoute using the HttpResponse overload
        // [Given]  O365BusFull Permissions
        Inizialize();

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateCalculateRouteParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(RoutesAPI.CalculateRoute(APIVersion::v1, Param, XmlResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(XmlResponse.SelectSingleNode(GetNodeXPath('StatusCode'), StatusCodeNode), 'XmlResponse should contain StatusCode node');
        Assert.AreEqual('401', StatusCodeNode.AsXmlElement().InnerText(), 'BingMaps Rest API should be StatusCode:401');
    end;

    local procedure CreateCalculateRouteParam(var Param: Dictionary of [Enum "jdi BingMaps Parameter CalculateRoute", Text])
    var
        CalculateRouteParam: Enum "jdi BingMaps Parameter CalculateRoute";
    begin
        Clear(Param);
        Param.Add(CalculateRouteParam::travelMode, 'Driving');

        Param.Add(CalculateRouteParam::"wp.0", 'Seattle,WA');
        Param.Add(CalculateRouteParam::"vwp.1", 'Portland,OR');
        Param.Add(CalculateRouteParam::"wp.2", 'Bend,OR');
        Param.Add(CalculateRouteParam::avoid, 'minimizeTolls');
        Param.Add(CalculateRouteParam::"key", InvalidBingMapsAPIKey);
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