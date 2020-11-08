codeunit 50009 "jdi BingMaps Impl. API Key"
{
    Access = Public;

    procedure CreateAPIKey(No: Code[20]; Desciption: Text[50]; BingMapsAPIKey: Text): Boolean
    var
        APIKey: Record "jdi BingMaps API Key";
    begin
        APIKey.Init();
        APIKey.Validate("No.", No);
        APIKey.Validate("Description", Desciption);
        APIKey.SetAPIKey(BingMapsAPIKey);
        exit(APIKey.Insert(true));
    end;

    procedure DeleteAPIKey(No: Code[20]): Boolean
    var
        APIKey: Record "jdi BingMaps API Key";
    begin
        if APIKey.Get(No) then
            exit(APIKey.Delete(true));
    end;


}