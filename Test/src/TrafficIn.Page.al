page 50204 "jdi BingMaps Test TrafficIn"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'BingMaps SDK Test TrafficIncidents (Manual)';


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
            action(TestGetTrafficIncidents)
            {
                ApplicationArea = All;
                Image = TestFile;
                ToolTip = 'TestGetTrafficIncidents';

                trigger OnAction()
                var
                    TrafficAPI: Codeunit "jdi BingMaps Traffic API";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;

                    APIVersion: Enum "jdi BingMaps GetTrafficIncidents API";
                    Param: Dictionary of [Enum "jdi BingMaps GetTrafficIncidents Parameter", Text];
                    GetTrafficIncidentsParam: Enum "jdi BingMaps GetTrafficIncidents Parameter";
                begin
                    APIVersion := APIVersion::v1;

                    Clear(Param);
                    Param.Add(GetTrafficIncidentsParam::mapArea, '45.219,-122.325,47.610,-122.107');

                    TrafficAPI.GetTrafficIncidents(APIVersion, Param, JResponse);
                    TrafficAPI.GetTrafficIncidents(APIVersion, Param, XmlResponse);
                    TrafficAPI.GetTrafficIncidents(APIVersion, Param, HttpResponse);
                end;
            }
        }
    }
}