permissionset 50200 "BINGMAPS SDK TEST"
{
    Access = Public;
    Assignable = true;
    Caption = 'BingMaps SDK Test';
    Permissions = codeunit "jdi BingMaps Test Helper" = X,
                  codeunit "jdi BingMaps Test Install" = X,
                  codeunit "jdi BingMaps Test Location v1" = X,
                  codeunit "jdi BingMaps Test Upgrade" = X;
}
