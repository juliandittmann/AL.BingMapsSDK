codeunit 50010 "jdi BingMaps API v1" implements "jdi BingMaps IVersion"
{
    procedure FindTimeZone(): enum "jdi BingMaps FindTimeZone API";
    begin
        exit(Enum::"jdi BingMaps FindTimeZone API"::v1);
    end;

    procedure ConvertTimeZone(): enum "jdi BingMaps ConvertTimeZone API";
    begin
        exit(Enum::"jdi BingMaps ConvertTimeZone API"::v1);
    end;

    procedure ListTimeZones(): enum "jdi BingMaps ListTimeZones API";
    begin
        exit(Enum::"jdi BingMaps ListTimeZones API"::v1);
    end;
}