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



    procedure FindLocationByAddress(): enum "jdi BingMaps FindLocationByAddress API";
    begin
        exit(Enum::"jdi BingMaps FindLocationByAddress API"::v1);
    end;

    procedure FindLocationByPoint(): enum "jdi BingMaps FindLocationByPoint API";
    begin
        exit(Enum::"jdi BingMaps FindLocationByPoint API"::v1);
    end;

    procedure FindLocationByQuery(): enum "jdi BingMaps FindLocationByQuery API";
    begin
        exit(Enum::"jdi BingMaps FindLocationByQuery API"::v1);
    end;

    procedure LocationRecognition(): enum "jdi BingMaps LocationRecognition API";
    begin
        exit(Enum::"jdi BingMaps LocationRecognition API"::v1);
    end;

    procedure LocalSearch(): enum "jdi BingMaps LocalSearch API";
    begin
        exit(Enum::"jdi BingMaps LocalSearch API"::v1);
    end;

    procedure GetTrafficIncidents(): enum "jdi BingMaps GetTrafficIncidents API";
    begin
        exit(Enum::"jdi BingMaps GetTrafficIncidents API"::v1);
    end;

    procedure Autosuggest(): enum "jdi BingMaps Autosuggest API";
    begin
        exit(Enum::"jdi BingMaps Autosuggest API"::v1);
    end;

    procedure GetElevationList(): enum "jdi BingMaps GetElevationList API";
    begin
        exit(Enum::"jdi BingMaps GetElevationList API"::v1);
    end;
}