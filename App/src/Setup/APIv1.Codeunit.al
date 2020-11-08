codeunit 50010 "jdi BingMaps API v1" implements "jdi BingMaps IVersion"
{
    procedure FindTimeZone(): enum "jdi BingMaps FindTimeZone API";
    begin
        exit(Enum::"jdi BingMaps FindTimeZone API"::v1);
    end;
}