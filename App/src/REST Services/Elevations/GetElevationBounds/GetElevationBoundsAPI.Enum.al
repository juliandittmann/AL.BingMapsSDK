enum 50023 "jdi BingMaps GetElevationBounds API" implements "jdi BingMaps IGetElevationBounds"
{
    Extensible = true;

    DefaultImplementation = "jdi BingMaps IGetElevationBounds" = "jdi BingMaps GetElev.Bounds v1";

    value(0; "v1")
    {
        Caption = 'v1';
        Implementation = "jdi BingMaps IGetElevationBounds" = "jdi BingMaps GetElev.Bounds v1";
    }
}