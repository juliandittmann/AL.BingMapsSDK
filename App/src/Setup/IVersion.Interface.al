interface "jdi BingMaps IVersion"
{
    procedure FindTimeZone(): Enum "jdi BingMaps FindTimeZone API";
    procedure ConvertTimeZone(): Enum "jdi BingMaps ConvertTimeZone API";
    procedure ListTimeZones(): Enum "jdi BingMaps ListTimeZones API";



    procedure FindLocationByAddress(): Enum "jdi BingMaps FindLocationByAddress API"
    procedure FindLocationByPoint(): Enum "jdi BingMaps FindLocationByPoint API";
    procedure FindLocationByQuery(): Enum "jdi BingMaps FindLocationByQuery API";
    procedure LocationRecognition(): Enum "jdi BingMaps LocationRecognition API";
    procedure LocalSearch(): Enum "jdi BingMaps LocalSearch API";
}