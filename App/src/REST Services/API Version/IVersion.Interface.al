interface "jdi BingMaps IVersion"
{

    procedure GetElevationList(): Enum "jdi BingMaps GetElevationList API";
    procedure GetElevationPolyline(): Enum "jdi BingMaps GetElevationPolyline API";
    procedure GetElevationBounds(): Enum "jdi BingMaps GetElevationBounds API";
    procedure GetElevationSealevel(): Enum "jdi BingMaps GetElevationSealevel API";




    procedure FindTimeZone(): Enum "jdi BingMaps FindTimeZone API";
    procedure ConvertTimeZone(): Enum "jdi BingMaps ConvertTimeZone API";
    procedure ListTimeZones(): Enum "jdi BingMaps ListTimeZones API";



    procedure FindLocationByAddress(): Enum "jdi BingMaps FindLocationByAddress API"
    procedure FindLocationByPoint(): Enum "jdi BingMaps FindLocationByPoint API";
    procedure FindLocationByQuery(): Enum "jdi BingMaps FindLocationByQuery API";
    procedure LocationRecognition(): Enum "jdi BingMaps LocationRecognition API";
    procedure LocalSearch(): Enum "jdi BingMaps LocalSearch API";


    procedure GetTrafficIncidents(): Enum "jdi BingMaps GetTrafficIncidents API";

    procedure Autosuggest(): Enum "jdi BingMaps Autosuggest API";


    procedure CalculateRoute(): Enum "jdi BingMaps CalculateRoute API";
}