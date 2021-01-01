page 50003 "jdi BingMaps Setup Card"
{
    PageType = Card;
    ApplicationArea = All;

    Caption = 'Bing Maps SDK Setup';

    UsageCategory = Administration;
    SourceTable = "jdi BingMaps Setup";

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

    actions
    {
        area(Navigation)
        {
            group(Help)
            {
                Caption = 'Help';
                ToolTip = 'Help';

                group(Links)
                {
                    Image = LinkWeb;
                    Caption = 'Links';
                    ToolTip = 'Links';
                    Description = 'Container for all Links';

                    action(Homepage)
                    {
                        Image = Home;
                        Caption = 'Homepage';
                        ToolTip = 'Homepage';
                        ApplicationArea = all;

                        trigger OnAction()
                        begin
                            Error('TODO: implement');
                        end;
                    }

                    action(Contact)
                    {
                        Image = ContactReference;
                        Caption = 'Contact';
                        ToolTip = 'Contact';
                        ApplicationArea = all;

                        trigger OnAction()
                        begin
                            Error('TODO: implement');
                        end;
                    }

                    action(Documentation)
                    {
                        Image = Document;
                        Caption = 'Documentation';
                        ToolTip = 'Documentation';
                        ApplicationArea = all;

                        trigger OnAction()
                        begin
                            Error('TODO: implement');
                        end;
                    }

                    action(EULA)
                    {
                        Image = LinkWithExisting;
                        Caption = 'EULA';
                        ToolTip = 'End User Licesne Agreement';
                        ApplicationArea = all;

                        trigger OnAction()
                        begin
                            Error('TODO: implement');
                        end;
                    }
                    action(PrivacyStatement)
                    {
                        Image = EncryptionKeys;
                        Caption = 'Privacy Statement';
                        ToolTip = 'Privacy Statement';
                        ApplicationArea = all;

                        trigger OnAction()
                        begin
                            Error('TODO: implement');
                        end;
                    }
                }
            }
        }
    }
}