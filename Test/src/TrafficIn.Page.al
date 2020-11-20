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
                ToolTip = 'TestAutosuggest';

                trigger OnAction()
                var
                    TrafficAPI: Codeunit "jdi BingMaps Traffic API";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;

                    Param: Dictionary of [Enum "jdi BingMaps GetTrafficIncidents Parameter", Text];
                    GetTrafficIncidentsParam: Enum "jdi BingMaps GetTrafficIncidents Parameter";
                begin
                    Clear(Param);
                    Param.Add(GetTrafficIncidentsParam::mapArea, '45.219,-122.325,47.610,-122.107');

                    TrafficAPI.GetTrafficIncidents(Param, JResponse);
                    TrafficAPI.GetTrafficIncidents(Param, XmlResponse);
                    TrafficAPI.GetTrafficIncidents(Param, HttpResponse);
                end;
            }
        }
    }
}