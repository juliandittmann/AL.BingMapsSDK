enum 50021 "jdi BingMaps GetElevationList API" implements "jdi BingMaps IGetElevationList"
{
    Extensible = true;

    DefaultImplementation = "jdi BingMaps IGetElevationList" = "jdi BingMaps GetElev. List v1";

    value(0; "v1")
    {
        Caption = 'v1';
        Implementation = "jdi BingMaps IGetElevationList" = "jdi BingMaps GetElev. List v1";
    }
}