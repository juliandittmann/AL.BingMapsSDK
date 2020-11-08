page 50002 "jdi BingMaps API Key Card"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = "jdi BingMaps API Key";

    Caption = 'Bing Maps API Key Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                ShowCaption = false;
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the API Key';
                }

                field(Desciption; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the API Key';
                }

                field(APIKey; APIKey)
                {
                    ApplicationArea = All;
                    Caption = 'API Key';
                    ToolTip = 'Specifies the API Key';

                    ExtendedDatatype = Masked;

                    trigger OnValidate()
                    begin
                        Rec.SetAPIKey(APIKey);
                        Commit();
                    end;
                }
            }
        }
    }


    trigger OnOpenPage()
    begin
        APIKey := '***';
    end;

    var
        APIKey: Text[250];
}