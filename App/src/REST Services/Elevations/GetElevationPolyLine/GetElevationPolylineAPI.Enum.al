enum 50025 "jdi BingMaps GetElevationPolyline API" implements "jdi BingMaps IGetElevationPolyline"
{
    Extensible = true;

    DefaultImplementation = "jdi BingMaps IGetElevationPolyline" = "jdi BingMaps GetElevPolylinev1";

    value(0; "v1")
    {
        Caption = 'v1';
        Implementation = "jdi BingMaps IGetElevationPolyline" = "jdi BingMaps GetElevPolylinev1";
    }
}