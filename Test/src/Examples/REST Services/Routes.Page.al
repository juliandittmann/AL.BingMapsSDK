page 50205 "jdi BingMaps Test Routes"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'BingMaps SDK Test Routes (Manual)';


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
            action("TestCalcualate Route")
            {
                ApplicationArea = All;
                Image = TestFile;
                ToolTip = 'TestCalcualate Route';

                trigger OnAction()
                var
                    RoutesAPI: Codeunit "jdi BingMaps API Routes";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;

                    APIVersion: Enum "jdi BingMaps API CalculateRoute";
                    Param: Dictionary of [Enum "jdi BingMaps Parameter CalculateRoute", Text];
                    CalculateRouteParam: Enum "jdi BingMaps Parameter CalculateRoute";
                begin
                    APIVersion := APIVersion::v1;

                    Clear(Param);
                    Param.Add(CalculateRouteParam::travelMode, 'Driving');

                    Param.Add(CalculateRouteParam::"wp.0", 'Seattle,WA');
                    Param.Add(CalculateRouteParam::"vwp.1", 'Portland,OR');
                    Param.Add(CalculateRouteParam::"wp.2", 'Bend,OR');
                    Param.Add(CalculateRouteParam::avoid, 'minimizeTolls');
                    Param.Add(CalculateRouteParam::"key", GetDefaultAPIKey());

                    RoutesAPI.CalculateRoute(APIVersion, Param, JResponse);
                    RoutesAPI.CalculateRoute(APIVersion, Param, XmlResponse);
                    RoutesAPI.CalculateRoute(APIVersion, Param, HttpResponse);
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