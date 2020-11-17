codeunit 50201 "jdi BingMaps Test Install"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    var
        TestToolHelper: Codeunit "jdi BingMaps Test Helper";
    begin
        TestToolHelper.Create('DEFAULT', '50200..50249', true);
    end;
}