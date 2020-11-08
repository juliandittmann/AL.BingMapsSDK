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
                begin
                    Clear(JResponse);
                    TimezoneAPI.FindTimeZoneByPoint('47,-122', JResponse);
                    Clear(JResponse);
                    TimezoneAPI.FindTimeZoneByPoint('47,-122', '2018-05-15T13:14:15Z', JResponse);

                    Clear(XmlResponse);
                    TimezoneAPI.FindTimeZoneByPoint('47,-122', XmlResponse);
                    Clear(XmlResponse);
                    TimezoneAPI.FindTimeZoneByPoint('47,-122', '2018-05-15T13:14:15Z', XmlResponse);


                    Clear(JResponse);
                    TimezoneAPI.FindTimeZoneByQuery('bellevue,wa,us', JResponse);
                    Clear(JResponse);
                    TimezoneAPI.FindTimeZoneByQuery('bellevue,wa,us', '2018-05-15T13:14:15Z', JResponse);

                    Clear(XmlResponse);
                    TimezoneAPI.FindTimeZoneByQuery('bellevue,wa,us', XmlResponse);
                    Clear(XmlResponse);
                    TimezoneAPI.FindTimeZoneByQuery('bellevue,wa,us', '2018-05-15T13:14:15Z', XmlResponse);
                end;
            }
        }
    }
}