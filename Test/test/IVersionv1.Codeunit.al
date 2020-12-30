codeunit 50203 "jdi BingMaps Test IVersion v1"
{
    Subtype = Test;
    TestPermissions = Disabled;

    [Test]
    procedure TestGetElevationListAPI()
    var
        APIVersion: Enum "jdi BingMaps API Version";
        IVersion: Interface "jdi BingMaps IVersion";

        GetElevationListAPI: Enum "jdi BingMaps GetElevationList API";
    begin
        IVersion := APIVersion::v1;
        Assert.AreEqual(IVersion.GetElevationList(), GetElevationListAPI::v1, 'Interface implementation should return v1 API');
    end;

    [Test]
    procedure TestGetElevationPolyLineAPI()
    var
        APIVersion: Enum "jdi BingMaps API Version";
        IVersion: Interface "jdi BingMaps IVersion";

        GetElevationPolylineAPI: Enum "jdi BingMaps GetElevationPolyline API";
    begin
        IVersion := APIVersion::v1;
        Assert.AreEqual(IVersion.GetElevationPolyline(), GetElevationPolylineAPI::v1, 'Interface implementation should return v1 API');
    end;

    [Test]
    procedure TestGetElevationBoundsAPI()
    var
        APIVersion: Enum "jdi BingMaps API Version";
        IVersion: Interface "jdi BingMaps IVersion";

        GetElevationBoundsAPI: Enum "jdi BingMaps GetElevationBounds API";
    begin
        IVersion := APIVersion::v1;
        Assert.AreEqual(IVersion.GetElevationBounds(), GetElevationBoundsAPI::v1, 'Interface implementation should return v1 API');
    end;

    [Test]
    procedure TestGetElevationSealevelAPI()
    var
        APIVersion: Enum "jdi BingMaps API Version";
        IVersion: Interface "jdi BingMaps IVersion";

        GetElevationSealevelAPI: Enum "jdi BingMaps GetElevationSealevel API";
    begin
        IVersion := APIVersion::v1;
        Assert.AreEqual(IVersion.GetElevationSealevel(), GetElevationSealevelAPI::v1, 'Interface implementation should return v1 API');
    end;

    [Test]
    procedure TestInterfaceFindTimeZoneAPI()
    var
        APIVersion: Enum "jdi BingMaps API Version";
        IVersion: Interface "jdi BingMaps IVersion";

        FindTimeZoneAPI: Enum "jdi BingMaps FindTimeZone API";
    begin
        IVersion := APIVersion::v1;
        Assert.AreEqual(IVersion.FindTimeZone(), FindTimeZoneAPI::v1, 'Interface implementation should return v1 API');
    end;

    [Test]
    procedure TestInterfaceConvertTimeZoneAPI()
    var
        APIVersion: Enum "jdi BingMaps API Version";
        IVersion: Interface "jdi BingMaps IVersion";

        ConvertTimeZoneAPI: Enum "jdi BingMaps ConvertTimeZone API";
    begin
        IVersion := APIVersion::v1;
        Assert.AreEqual(IVersion.ConvertTimeZone(), ConvertTimeZoneAPI::v1, 'Interface implementation should return v1 API');
    end;

    [Test]
    procedure TestInterfaceListTimeZonesAPI()
    var
        APIVersion: Enum "jdi BingMaps API Version";
        IVersion: Interface "jdi BingMaps IVersion";

        ListTimeZonesAPI: Enum "jdi BingMaps ListTimeZones API";
    begin
        IVersion := APIVersion::v1;
        Assert.AreEqual(IVersion.ListTimeZones(), ListTimeZonesAPI::v1, 'Interface implementation should return v1 API');
    end;

    [Test]
    procedure TestInterfaceFindLocationByAddressAPI()
    var
        APIVersion: Enum "jdi BingMaps API Version";
        IVersion: Interface "jdi BingMaps IVersion";

        FindLocationByAddressAPI: Enum "jdi BingMaps FindLocationByAddress API";
    begin
        IVersion := APIVersion::v1;
        Assert.AreEqual(IVersion.FindLocationByAddress(), FindLocationByAddressAPI::v1, 'Interface implementation should return v1 API');
    end;

    [Test]
    procedure TestInterfaceFindLocationByPointAPI()
    var
        APIVersion: Enum "jdi BingMaps API Version";
        IVersion: Interface "jdi BingMaps IVersion";

        FindLocationByPointAPI: Enum "jdi BingMaps FindLocationByPoint API";
    begin
        IVersion := APIVersion::v1;
        Assert.AreEqual(IVersion.FindLocationByPoint(), FindLocationByPointAPI::v1, 'Interface implementation should return v1 API');
    end;

    [Test]
    procedure TestInterfaceFindLocationByQueryAPI()
    var
        APIVersion: Enum "jdi BingMaps API Version";
        IVersion: Interface "jdi BingMaps IVersion";

        FindLocationByQueryAPI: Enum "jdi BingMaps FindLocationByQuery API";
    begin
        IVersion := APIVersion::v1;
        Assert.AreEqual(IVersion.FindLocationByQuery(), FindLocationByQueryAPI::v1, 'Interface implementation should return v1 API');
    end;

    [Test]
    procedure TestInterfaceLocationRecognitionAPI()
    var
        APIVersion: Enum "jdi BingMaps API Version";
        IVersion: Interface "jdi BingMaps IVersion";

        LocationRecognitionAPI: Enum "jdi BingMaps LocationRecognition API";
    begin
        IVersion := APIVersion::v1;
        Assert.AreEqual(IVersion.LocationRecognition(), LocationRecognitionAPI::v1, 'Interface implementation should return v1 API');
    end;

    [Test]
    procedure TestInterfaceLocalSearchAPI()
    var
        APIVersion: Enum "jdi BingMaps API Version";
        IVersion: Interface "jdi BingMaps IVersion";

        LocalSearchAPI: Enum "jdi BingMaps LocalSearch API";
    begin
        IVersion := APIVersion::v1;
        Assert.AreEqual(IVersion.LocalSearch(), LocalSearchAPI::v1, 'Interface implementation should return v1 API');
    end;

    [Test]
    procedure TestInterfaceGetTrafficIncidentsAPI()
    var
        APIVersion: Enum "jdi BingMaps API Version";
        IVersion: Interface "jdi BingMaps IVersion";

        GetTrafficIncidentsAPI: Enum "jdi BingMaps GetTrafficIncidents API";
    begin
        IVersion := APIVersion::v1;
        Assert.AreEqual(IVersion.GetTrafficIncidents(), GetTrafficIncidentsAPI::v1, 'Interface implementation should return v1 API');
    end;

    [Test]
    procedure TestInterfaceAutosuggestAPI()
    var
        APIVersion: Enum "jdi BingMaps API Version";
        IVersion: Interface "jdi BingMaps IVersion";

        AutosuggestAPI: Enum "jdi BingMaps Autosuggest API";
    begin
        IVersion := APIVersion::v1;
        Assert.AreEqual(IVersion.Autosuggest(), AutosuggestAPI::v1, 'Interface implementation should return v1 API');
    end;

    [Test]
    procedure TestInterfaceCalculateRouteAPI()
    var
        APIVersion: Enum "jdi BingMaps API Version";
        IVersion: Interface "jdi BingMaps IVersion";

        CalculateRouteAPI: Enum "jdi BingMaps CalculateRoute API";
    begin
        IVersion := APIVersion::v1;
        Assert.AreEqual(IVersion.CalculateRoute(), CalculateRouteAPI::v1, 'Interface implementation should return v1 API');
    end;


    [Test]
    procedure TestInterfaceCalculateTruckRouteAPI()
    var
        APIVersion: Enum "jdi BingMaps API Version";
        IVersion: Interface "jdi BingMaps IVersion";

        CalculateTruckRouteAPI: Enum "jdi BingMaps CalculateTruckRoute API";
    begin
        IVersion := APIVersion::v1;
        Assert.AreEqual(IVersion.CalculateTruckRoute(), CalculateTruckRouteAPI::v1, 'Interface implementation should return v1 API');
    end;


    var
        Assert: Codeunit "Library Assert";
}