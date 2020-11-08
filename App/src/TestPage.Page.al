page 50000 "jdi BingMaps TestPage"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                Image = TestFile;
                ToolTip = 'test';

                trigger OnAction()
                var
                    TimezoneAPI: Codeunit "jdi BingMaps Time Zone API";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;

                    Param: Dictionary of [Enum "jdi BingMaps FindTimeZone Parameter", Text];
                    FindTimeZoneParam: Enum "jdi BingMaps FindTimeZone Parameter";
                begin
                    //Param.Add(FindTimeZoneParam::point, '47,-122'); //TODO: point Paramenter Problem
                    //TimezoneAPI.FindTimeZone(Param, JResponse);

                    Clear(Param);
                    Param.Add(FindTimeZoneParam::query, 'bellevue,wa,us');
                    TimezoneAPI.FindTimeZone(Param, JResponse);

                    Clear(Param);
                    Param.Add(FindTimeZoneParam::query, 'bellevue,wa,us');
                    TimezoneAPI.FindTimeZone(Param, XmlResponse);

                    Clear(Param);
                    Param.Add(FindTimeZoneParam::query, 'bellevue,wa,us');
                    TimezoneAPI.FindTimeZone(Param, HttpResponse);
                end;
            }
        }
    }
}