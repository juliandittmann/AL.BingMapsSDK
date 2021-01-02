page 50000 "jdi BingMaps Sandbox"
{
    Caption = 'BingMaps ControlAddin Sandbox';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                usercontrol(BingMaps; "jdi BingMaps V8 Web Control")
                {
                    ApplicationArea = All;

                    trigger ControlAddinLoaded()
                    var
                        BingMapsSetup: Record "jdi BingMaps Setup";
                        Param: JsonObject;
                    begin
                        ControlAddinLoaded := true;

                        BingMapsSetup.Get();
                        Param.Add('credentials', BingMapsSetup.GetDefaultAPIKey());

                        CurrPage.BingMaps.CreateMap(Param);
                    end;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(AddPin)
            {
                Caption = 'PushPin';
                ToolTip = 'test';
                ApplicationArea = All;

                trigger OnAction()
                var
                    Location: JsonObject;
                    PinOptions: JsonObject;
                begin
                    Location.Add('latitude', '51.970819');
                    Location.Add('longitude', '7.611977');

                    PinOptions.Add('title', 'Home');
                    PinOptions.Add('subTitle', 'Test');
                    PinOptions.Add('text', '1');

                    if ControlAddinLoaded then
                        CurrPage.BingMaps.PushPin(Location, PinOptions);
                end;
            }
        }
    }

    var
        ControlAddinLoaded: Boolean;
}