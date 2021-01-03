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
                    TrafficAPI: Codeunit "jdi BingMaps API Traffic";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;

                    APIVersion: Enum "jdi BingMaps API GetTrafficIncidents";
                    Param: Dictionary of [Enum "jdi BingMaps Parameter GetTrafficIncidents", Text];
                    GetTrafficIncidentsParam: Enum "jdi BingMaps Parameter GetTrafficIncidents";
                begin
                    APIVersion := APIVersion::v1;

                    Clear(Param);
                    Param.Add(GetTrafficIncidentsParam::mapArea, '45.219,-122.325,47.610,-122.107');
                    Param.Add(GetTrafficIncidentsParam::"key", GetDefaultAPIKey());

                    TrafficAPI.GetTrafficIncidents(APIVersion, Param, JResponse);
                    TrafficAPI.GetTrafficIncidents(APIVersion, Param, XmlResponse);
                    TrafficAPI.GetTrafficIncidents(APIVersion, Param, HttpResponse);
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