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
                    TimezoneAPI: Codeunit "jdi BingMaps API TimeZone";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;

                    APIVersion: Enum "jdi BingMaps API FindTimeZone";
                    Param: Dictionary of [Enum "jdi BingMaps Parameter FindTimeZone", Text];
                    FindTimeZoneParam: Enum "jdi BingMaps Parameter FindTimeZone";
                begin
                    APIVersion := APIVersion::v1;

                    Clear(Param);
                    Param.Add(FindTimeZoneParam::point, '47,-122');
                    Param.Add(FindTimeZoneParam::"key", GetDefaultAPIKey());

                    TimezoneAPI.FindTimeZone(APIVersion, Param, JResponse);
                    TimezoneAPI.FindTimeZone(APIVersion, Param, XmlResponse);
                    TimezoneAPI.FindTimeZone(APIVersion, Param, HttpResponse);

                    Clear(JResponse);
                    Clear(XmlResponse);
                    Clear(HttpResponse);
                    Clear(Param);

                    Param.Add(FindTimeZoneParam::query, 'bellevue,wa,us');
                    Param.Add(FindTimeZoneParam::"key", GetDefaultAPIKey());

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
                    TimezoneAPI: Codeunit "jdi BingMaps API TimeZone";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;

                    APIVersion: Enum "jdi BingMaps API ConvertTimeZone";
                    Param: Dictionary of [Enum "jdi BingMaps Parameter ConvertTimeZone", Text];
                    ConvertTimeZoneParam: Enum "jdi BingMaps Parameter ConvertTimeZone";
                begin
                    APIVersion := APIVersion::v1;

                    Clear(Param);
                    Param.Add(ConvertTimeZoneParam::dateTime, '2018-05-15T13:14:15Z');
                    Param.Add(ConvertTimeZoneParam::desttz, 'america/Los_Angeles');
                    Param.Add(ConvertTimeZoneParam::"key", GetDefaultAPIKey());

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
                    Param.Add(ConvertTimeZoneParam::"key", GetDefaultAPIKey());

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
                    TimezoneAPI: Codeunit "jdi BingMaps API TimeZone";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;

                    APIVersion: Enum "jdi BingMaps API ListTimeZones";
                    Param: Dictionary of [Enum "jdi BingMaps Parameter ListTimeZones", Text];
                    ListTimeZoneParam: Enum "jdi BingMaps Parameter ListTimeZones";
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
                    Param.Add(ListTimeZoneParam::"key", GetDefaultAPIKey());

                    TimezoneAPI.ListTimeZones(APIVersion, Param, JResponse);
                    TimezoneAPI.ListTimeZones(APIVersion, Param, XmlResponse);
                    TimezoneAPI.ListTimeZones(APIVersion, Param, HttpResponse);
                end;
            }
        }
    }

    local procedure GetDefaultAPIKey(): Text
    var
        BingMapsSDKTestSetup: Record "jdi BingMaps Test Setup";
    begin
        if BingMapsSDKTestSetup.Get() then
            exit(BingMapsSDKTestSetup.GetDefaultAPIKey());
    end;
}