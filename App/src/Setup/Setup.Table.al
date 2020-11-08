table 50000 "jdi BingMaps Setup"
{
    DataClassification = SystemMetadata;
    Access = Internal;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = CustomerContent;
        }

        field(2; "API Version"; Enum "jdi BingMaps API Version")
        {
            Caption = 'API version';
            DataClassification = CustomerContent;
        }

        field(3; "Default API Key"; Code[20])
        {
            Caption = 'Default API Key';
            DataClassification = CustomerContent;
            TableRelation = "jdi BingMaps API Key";
        }

        field(40; "Enable Webservice Calls"; Boolean)
        {
            Caption = 'Enable Webservice Calls';
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                NavAppSettings: Record "NAV App Setting";
                AppInfo: ModuleInfo;
            begin
                NavApp.GetCurrentModuleInfo(AppInfo);
                NavAppSettings."App ID" := AppInfo.Id();
                NavAppSettings."Allow HttpClient Requests" := Rec."Enable webService Calls";
                if not NavAppSettings.Insert() then
                    NavAppSettings.Modify();
            end;
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    [NonDebuggable]
    procedure GetDefaultAPIKey(): Text
    var
        APIKey: Record "jdi BingMaps API Key";
    begin
        if APIKey.Get("Default API Key") then
            exit(APIKey.GetAPIKey());
    end;
}