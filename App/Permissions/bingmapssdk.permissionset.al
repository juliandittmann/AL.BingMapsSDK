permissionset 50000 "BING MAPS SDK"
{
    Access = Public;
    Assignable = true;
    Caption = 'Bing Maps SDK';
    Permissions = codeunit "jdi BingMaps API Autosuggest" = X,
                  codeunit "jdi BingMaps API Elevations" = X,
                  codeunit "jdi BingMaps API Imagery" = X,
                  codeunit "jdi BingMaps API Locations" = X,
                  codeunit "jdi BingMaps API Routes" = X,
                  codeunit "jdi BingMaps API TimeZone" = X,
                  codeunit "jdi BingMaps API Traffic" = X,
                  codeunit "jdi BingMaps Autosuggest v1" = X,
                  codeunit "jdi BingMaps CalcTruckRoute v1" = X,
                  codeunit "jdi BingMaps CalculateRoute v1" = X,
                  codeunit "jdi BingMaps ConvertTimeZonev1" = X,
                  codeunit "jdi BingMaps FindLocByAddr v1" = X,
                  codeunit "jdi BingMaps FindLocByPoint v1" = X,
                  codeunit "jdi BingMaps FindLocByQuery v1" = X,
                  codeunit "jdi BingMaps FindTimeZone v1" = X,
                  codeunit "jdi BingMaps GetElev. List v1" = X,
                  codeunit "jdi BingMaps GetElev.Bounds v1" = X,
                  codeunit "jdi BingMaps GetElev.Sealvl v1" = X,
                  codeunit "jdi BingMaps GetElevPolylinev1" = X,
                  codeunit "jdi BingMaps GetTrafficInci v1" = X,
                  codeunit "jdi BingMaps Install" = X,
                  codeunit "jdi BingMaps ListTimeZones v1" = X,
                  codeunit "jdi BingMaps LocalSearch v1" = X,
                  codeunit "jdi BingMaps LocRecognition v1" = X,
                  codeunit "jdi BingMaps REST Helper" = X,
                  codeunit "jdi BingMaps Upgrade" = X;
}
