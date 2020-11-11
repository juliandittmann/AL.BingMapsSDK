interface "jdi BingMaps IVersion"
{
    procedure FindTimeZone(): Enum "jdi BingMaps FindTimeZone API";
    procedure ConvertTimeZone(): Enum "jdi BingMaps ConvertTimeZone API";
    procedure ListTimeZones(): Enum "jdi BingMaps ListTimeZones API";


    procedure FindLocationByPoint(): Enum "jdi BingMaps FindLocationByPoint API";
    procedure FindLocationByQuery(): Enum "jdi BingMaps FindLocationByQuery API";

}