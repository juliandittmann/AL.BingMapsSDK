page 50201 "jdi BingMaps Test Time"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'BingMaps SDK Test Time (Manual)';

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

                    APIVersion: Enum "jdi BingMaps FindTimeZone API";
                    Param: Dictionary of [Enum "jdi BingMaps FindTimeZone Parameter", Text];
                    FindTimeZoneParam: Enum "jdi BingMaps FindTimeZone Parameter";
                begin
                    APIVersion := APIVersion::v1;

                    Clear(Param);
                    Param.Add(FindTimeZoneParam::point, '47,-122');
                    TimezoneAPI.FindTimeZone(APIVersion, Param, JResponse);
                    TimezoneAPI.FindTimeZone(APIVersion, Param, XmlResponse);
                    TimezoneAPI.FindTimeZone(APIVersion, Param, HttpResponse);

                    Clear(JResponse);
                    Clear(XmlResponse);
                    Clear(HttpResponse);
                    Clear(Param);
                    Param.Add(FindTimeZoneParam::query, 'bellevue,wa,us');

                    TimezoneAPI.FindTimeZone(APIVersion, Param, JResponse);
                    TimezoneAPI.FindTimeZone(APIVersion, Param, XmlResponse);
                    TimezoneAPI.FindTimeZone(APIVersion, Param, HttpResponse);
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

                    APIVersion: Enum "jdi BingMaps ConvertTimeZone API";
                    Param: Dictionary of [Enum "jdi BingMaps ConvertTimeZone Parameter", Text];
                    ConvertTimeZoneParam: Enum "jdi BingMaps ConvertTimeZone Parameter";
                begin
                    APIVersion := APIVersion::v1;

                    Clear(Param);
                    Param.Add(ConvertTimeZoneParam::dateTime, '2018-05-15T13:14:15Z');
                    Param.Add(ConvertTimeZoneParam::desttz, 'america/Los_Angeles');

                    TimezoneAPI.ConvertTimeZone(APIVersion, Param, JResponse);
                    TimezoneAPI.ConvertTimeZone(APIVersion, Param, XmlResponse);
                    TimezoneAPI.ConvertTimeZone(APIVersion, Param, HttpResponse);

                    Clear(JResponse);
                    Clear(XmlResponse);
                    Clear(HttpResponse);
                    Clear(Param);

                    Param.Add(ConvertTimeZoneParam::dateTime, '2018-05-15T13:14:15Z');
                    Param.Add(ConvertTimeZoneParam::desttz, 'america/Los_Angeles');
                    Param.Add(ConvertTimeZoneParam::includeDstRules, 'true');

                    TimezoneAPI.ConvertTimeZone(APIVersion, Param, JResponse);
                    TimezoneAPI.ConvertTimeZone(APIVersion, Param, XmlResponse);
                    TimezoneAPI.ConvertTimeZone(APIVersion, Param, HttpResponse);
                end;
            }

            action(TestListTimeZones)
            {
                ApplicationArea = All;
                Image = TestFile;
                ToolTip = 'TestListTimeZones';

                trigger OnAction()
                var
                    TimezoneAPI: Codeunit "jdi BingMaps Time Zone API";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;

                    APIVersion: Enum "jdi BingMaps ListTimeZones API";
                    Param: Dictionary of [Enum "jdi BingMaps ListTimeZones Parameter", Text];
                    ListTimeZoneParam: Enum "jdi BingMaps ListTimeZones Parameter";
                begin
                    APIVersion := APIVersion::v1;

                    Clear(Param);
                    Param.Add(ListTimeZoneParam::timezonestandard, 'Windows');

                    TimezoneAPI.ListTimeZones(APIVersion, Param, JResponse);
                    TimezoneAPI.ListTimeZones(APIVersion, Param, XmlResponse);
                    TimezoneAPI.ListTimeZones(APIVersion, Param, HttpResponse);


                    Clear(JResponse);
                    Clear(XmlResponse);
                    Clear(HttpResponse);
                    Clear(Param);

                    Param.Add(ListTimeZoneParam::desttz, 'America/Los_Angeles');
                    Param.Add(ListTimeZoneParam::includeDstRules, 'true');

                    TimezoneAPI.ListTimeZones(APIVersion, Param, JResponse);
                    TimezoneAPI.ListTimeZones(APIVersion, Param, XmlResponse);
                    TimezoneAPI.ListTimeZones(APIVersion, Param, HttpResponse);
                end;
            }
        }
    }
}