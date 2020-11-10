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
            action(TestFindTimeZone)
            {
                ApplicationArea = All;
                Image = TestFile;
                ToolTip = 'TestFindTimeZone';

                trigger OnAction()
                var
                    TimezoneAPI: Codeunit "jdi BingMaps Time Zone API";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;

                    Param: Dictionary of [Enum "jdi BingMaps FindTimeZone Parameter", Text];
                    FindTimeZoneParam: Enum "jdi BingMaps FindTimeZone Parameter";
                begin


                    Clear(Param);
                    Param.Add(FindTimeZoneParam::point, '47,-122');
                    TimezoneAPI.FindTimeZone(Param, JResponse);
                    TimezoneAPI.FindTimeZone(Param, XmlResponse);
                    TimezoneAPI.FindTimeZone(Param, HttpResponse);


                    Clear(JResponse);
                    Clear(XmlResponse);
                    Clear(HttpResponse);
                    Clear(Param);
                    Param.Add(FindTimeZoneParam::query, 'bellevue,wa,us');
                    TimezoneAPI.FindTimeZone(Param, JResponse);

                    TimezoneAPI.FindTimeZone(Param, XmlResponse);

                    TimezoneAPI.FindTimeZone(Param, HttpResponse);


                end;
            }

            action(TestConvertTimeZone)
            {
                ApplicationArea = All;
                Image = TestFile;
                ToolTip = 'TestConvertTimeZone';

                trigger OnAction()
                var
                    TimezoneAPI: Codeunit "jdi BingMaps Time Zone API";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;

                    Param: Dictionary of [Enum "jdi BingMaps ConvertTimeZone Parameter", Text];
                    ConvertTimeZoneParam: Enum "jdi BingMaps ConvertTimeZone Parameter";
                begin


                    Clear(Param);
                    Param.Add(ConvertTimeZoneParam::dateTime, '2018-05-15T13:14:15Z');
                    Param.Add(ConvertTimeZoneParam::desttz, 'america/Los_Angeles');

                    TimezoneAPI.ConvertTimeZone(Param, JResponse);
                    TimezoneAPI.ConvertTimeZone(Param, XmlResponse);
                    TimezoneAPI.ConvertTimeZone(Param, HttpResponse);


                    Clear(JResponse);
                    Clear(XmlResponse);
                    Clear(HttpResponse);
                    Clear(Param);

                    Param.Add(ConvertTimeZoneParam::dateTime, '2018-05-15T13:14:15Z');
                    Param.Add(ConvertTimeZoneParam::desttz, 'america/Los_Angeles');
                    Param.Add(ConvertTimeZoneParam::includeDstRules, 'true');

                    TimezoneAPI.ConvertTimeZone(Param, JResponse);

                    TimezoneAPI.ConvertTimeZone(Param, XmlResponse);

                    TimezoneAPI.ConvertTimeZone(Param, HttpResponse);


                end;
            }

            action(TestListTimeZones)
            {
                ApplicationArea = All;
                Image = TestFile;
                ToolTip = 'TestConvertTimeZone';

                trigger OnAction()
                var
                    TimezoneAPI: Codeunit "jdi BingMaps Time Zone API";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;

                    Param: Dictionary of [Enum "jdi BingMaps ListTimeZones Parameter", Text];
                    ListTimeZoneParam: Enum "jdi BingMaps ListTimeZones Parameter";
                begin
                    Clear(Param);
                    Param.Add(ListTimeZoneParam::timezonestandard, 'Windows');

                    TimezoneAPI.ListTimeZones(Param, JResponse);
                    TimezoneAPI.ListTimeZones(Param, XmlResponse);
                    TimezoneAPI.ListTimeZones(Param, HttpResponse);


                    Clear(JResponse);
                    Clear(XmlResponse);
                    Clear(HttpResponse);
                    Clear(Param);

                    Param.Add(ListTimeZoneParam::desttz, 'America/Los_Angeles');
                    Param.Add(ListTimeZoneParam::includeDstRules, 'true');

                    TimezoneAPI.ListTimeZones(Param, JResponse);
                    TimezoneAPI.ListTimeZones(Param, XmlResponse);
                    TimezoneAPI.ListTimeZones(Param, HttpResponse);
                end;
            }
        }
    }
}