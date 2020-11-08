page 50001 "jdi BingMaps API Key List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;

    Caption = 'Bing Maps SDK API Key List';

    CardPageId = "jdi BingMaps API Key Card";
    SourceTable = "jdi BingMaps API Key";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(APIKeyRepeater)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'No.';
                }

                field(Description; Rec."Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Description';
                }

                field(ApiKey; "APIKey")
                {
                    ApplicationArea = All;
                    Caption = 'API Key';
                    ToolTip = 'Specifies the API Key';
                    Editable = false;
                    ExtendedDatatype = Masked;
                }
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    begin
        APIKey := '***';
    end;

    var
        APIKey: Text[250];
}