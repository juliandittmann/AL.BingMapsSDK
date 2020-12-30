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
                    RoutesAPI: Codeunit "jdi BingMaps Routes API";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;

                    Param: Dictionary of [Enum "jdi BingMaps CalculateRoute Parameter", Text];
                    CalculateRouteParam: Enum "jdi BingMaps CalculateRoute Parameter";
                begin
                    Clear(Param);
                    Param.Add(CalculateRouteParam::"wp.0", 'New York,NY');
                    Param.Add(CalculateRouteParam::"wp.1", 'Philadelphia,PA');
                    Param.Add(CalculateRouteParam::maxSolutions, '3');

                    RoutesAPI.CalculateRoute(Param, JResponse);
                    RoutesAPI.CalculateRoute(Param, XmlResponse);
                    RoutesAPI.CalculateRoute(Param, HttpResponse);
                end;
            }
        }
    }
}