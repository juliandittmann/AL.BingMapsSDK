page 50258 "jdi BingMaps Demo Setup Card"
{
    PageType = Card;
    ApplicationArea = All;

    Caption = 'Bing Maps SDK Demo Setup';

    UsageCategory = Administration;
    SourceTable = "jdi BingMaps Demo Setup";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Enable Webservice Calls"; Rec."Enable Webservice Calls")
                {
                    ApplicationArea = All;
                    ToolTip = 'Required to communicate with Bing REST Services';
                }

                field("Default API Key"; Rec."Default API Key")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Default API Key';
                }
            }
        }
    }
}