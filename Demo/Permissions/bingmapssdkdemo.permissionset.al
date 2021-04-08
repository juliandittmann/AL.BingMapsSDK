permissionset 50250 "BINGMAPS SDK DEMO"
{
    Access = Public;
    Assignable = true;
    Caption = 'BingMaps SDK Demo';
    Permissions = codeunit "jdi BingMaps Demo Install" = X,
                  codeunit "jdi BingMaps Demo Upgrade" = X,
                  page "jdi BingMaps Demo API Key Card" = X,
                  page "jdi BingMaps Demo API Key List" = X,
                  page "jdi BingMaps Demo Autosuggest" = X,
                  page "jdi BingMaps Demo Location" = X,
                  page "jdi BingMaps Demo Routes" = X,
                  page "jdi BingMaps Demo Sandbox" = X,
                  page "jdi BingMaps Demo Setup Card" = X,
                  page "jdi BingMaps Demo Time" = X,
                  page "jdi BingMaps Demo TrafficIn" = X,
                  table "jdi BingMaps Demo API Key" = X,
                  table "jdi BingMaps Demo Setup" = X,
                  tabledata "jdi BingMaps Demo API Key" = RIMD,
                  tabledata "jdi BingMaps Demo Setup" = RIMD;
}
