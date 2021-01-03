enum 50027 "jdi BingMaps API GetElevationSealevel" implements "jdi BingMaps IGetElevationSealevel"
{
    Extensible = true;

    DefaultImplementation = "jdi BingMaps IGetElevationSealevel" = "jdi BingMaps GetElev.Sealvl v1";

    value(0; "v1")
    {
        Caption = 'v1';
        Implementation = "jdi BingMaps IGetElevationSealevel" = "jdi BingMaps GetElev.Sealvl v1";
    }
}