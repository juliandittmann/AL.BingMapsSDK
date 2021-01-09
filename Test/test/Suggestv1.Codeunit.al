codeunit 50204 "jdi BingMaps Test Suggest v1"
{
    Subtype = Test;
    TestPermissions = Disabled;

    [Test]
    procedure TestAutosuggestWithHttp()
    var
        AutosuggestAPI: Codeunit "jdi BingMaps API Autosuggest";
        JResponse: JsonObject;
        HttpResponse: HttpResponseMessage;

        APIVersion: Enum "jdi BingMaps API Autosuggest";
        Param: Dictionary of [Enum "jdi BingMaps Parameter Autosuggest", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-Autosuggest using the HttpResponse overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateAutosuggestParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(AutosuggestAPI.Autosuggest(APIVersion::v1, Param, HttpResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.AreEqual(HttpResponse.HttpStatusCode(), 401, 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestAutosuggestWithJson()
    var
        AutosuggestAPI: Codeunit "jdi BingMaps API Autosuggest";
        JResponse: JsonObject;
        StatusToken: JsonToken;

        APIVersion: Enum "jdi BingMaps API Autosuggest";
        Param: Dictionary of [Enum "jdi BingMaps Parameter Autosuggest", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-Autosuggest using the JsonObject overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateAutosuggestParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(AutosuggestAPI.Autosuggest(APIVersion::v1, Param, JResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(JResponse.Get('statusCode', StatusToken), 'JResponse should contain statusCode');
        Assert.AreEqual(StatusToken.AsValue().AsInteger(), 401, 'BingMaps Rest API should be StatusCode:401');
    end;

    [Test]
    procedure TestAutosuggestWithXml()
    var
        AutosuggestAPI: Codeunit "jdi BingMaps API Autosuggest";
        XmlResponse: XmlDocument;
        StatusCodeNode: XmlNode;

        APIVersion: Enum "jdi BingMaps API Autosuggest";
        Param: Dictionary of [Enum "jdi BingMaps Parameter Autosuggest", Text];
    begin
        // [Scenario] Invoke an invalid webserviceCall to BingMaps-Autosuggest using the HttpResponse overload
        // [Given]  O365BusFull Permissions

        //Using permissions that do not include SUPER
        LibraryLowerPermissions.SetO365BusFull();

        //[Then] Create Parameter    
        CreateAutosuggestParam(Param);

        //[Then] Verify Bing Maps response  
        Assert.IsFalse(AutosuggestAPI.Autosuggest(APIVersion::v1, Param, XmlResponse), 'BingMaps Rest API should not be StatusCode:200');

        //[Finally] Verify Bing Maps response StatusCode
        Assert.IsTrue(XmlResponse.SelectSingleNode(GetNodeXPath('StatusCode'), StatusCodeNode), 'XmlResponse should contain StatusCode node');
        Assert.AreEqual(StatusCodeNode.AsXmlElement().InnerText(), '401', 'BingMaps Rest API should be StatusCode:401');
    end;

    local procedure CreateAutosuggestParam(var Param: Dictionary of [Enum "jdi BingMaps Parameter Autosuggest", Text])
    var
        AutosuggestParam: Enum "jdi BingMaps Parameter Autosuggest";
    begin
        Clear(Param);
        Param.Add(AutosuggestParam::query, 'El Gaucho');
        Param.Add(AutosuggestParam::userLocation, '48.604311,-122.981998,5000');
        Param.Add(AutosuggestParam::"key", InvalidBingMapsAPIKey);
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