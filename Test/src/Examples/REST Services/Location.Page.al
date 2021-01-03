page 50202 "jdi BingMaps Test Location"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'BingMaps SDK Test Location (Manual)';

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
            action(TestFindLocationByPoint)
            {
                ApplicationArea = All;
                Image = TestFile;
                ToolTip = 'TestFindLocationByPoint';

                trigger OnAction()
                var
                    LocationsAPI: Codeunit "jdi BingMaps Locations API";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;

                    APIVersion: Enum "jdi BingMaps FindLocationByPoint API";
                    Param: Dictionary of [Enum "jdi BingMaps FindLocationByPoint Parameter", Text];
                    FindLocationByPointParam: Enum "jdi BingMaps FindLocationByPoint Parameter";
                begin
                    APIVersion := APIVersion::v1;

                    Clear(Param);
                    Param.Add(FindLocationByPointParam::point, '47.64054,-122.12934');

                    LocationsAPI.FindLocationByPoint(APIVersion, Param, JResponse);
                    LocationsAPI.FindLocationByPoint(APIVersion, Param, XmlResponse);
                    LocationsAPI.FindLocationByPoint(APIVersion, Param, HttpResponse);
                end;
            }


            action(TestFindLocationByQuery)
            {
                ApplicationArea = All;
                Image = TestFile;
                ToolTip = 'TestFindLocationByQuery';

                trigger OnAction()
                var
                    LocationsAPI: Codeunit "jdi BingMaps Locations API";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;


                    APIVersion: Enum "jdi BingMaps FindLocationByQuery API";
                    Param: Dictionary of [Enum "jdi BingMaps FindLocationByQuery Parameter", Text];
                    FindLocationByQueryParam: Enum "jdi BingMaps FindLocationByQuery Parameter";
                begin
                    APIVersion := APIVersion::v1;

                    Clear(Param);
                    Param.Add(FindLocationByQueryParam::query, 'White House');

                    LocationsAPI.FindLocationByQuery(APIVersion, Param, JResponse);
                    LocationsAPI.FindLocationByQuery(APIVersion, Param, XmlResponse);
                    LocationsAPI.FindLocationByQuery(APIVersion, Param, HttpResponse);
                end;
            }


            action(TestLocationRecognition)
            {
                ApplicationArea = All;
                Image = TestFile;
                ToolTip = 'TestLocationRecognition';

                trigger OnAction()
                var
                    LocationsAPI: Codeunit "jdi BingMaps Locations API";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;

                    APIVersion: Enum "jdi BingMaps LocationRecognition API";
                    Param: Dictionary of [Enum "jdi BingMaps LocationRecognition Parameter", Text];
                    LocationRecognitionParam: Enum "jdi BingMaps LocationRecognition Parameter";
                begin
                    APIVersion := APIVersion::v1;

                    Clear(Param);
                    Param.Add(LocationRecognitionParam::point, '47.610679194331169,-122.10788659751415');

                    LocationsAPI.LocationRecognition(APIVersion, Param, JResponse);
                    LocationsAPI.LocationRecognition(APIVersion, Param, XmlResponse);
                    LocationsAPI.LocationRecognition(APIVersion, Param, HttpResponse);
                end;
            }

            action(TestLocalSearch)
            {
                ApplicationArea = All;
                Image = TestFile;
                ToolTip = 'TestLocalSearch';

                trigger OnAction()
                var
                    LocationsAPI: Codeunit "jdi BingMaps Locations API";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;

                    APIVersion: Enum "jdi BingMaps LocalSearch API";
                    Param: Dictionary of [Enum "jdi BingMaps LocalSearch Parameter", Text];
                    LocalSearchParam: Enum "jdi BingMaps LocalSearch Parameter";
                begin
                    APIVersion := APIVersion::v1;

                    Clear(Param);
                    Param.Add(LocalSearchParam::query, 'coffee');
                    Param.Add(LocalSearchParam::userLocation, '47.602038,-122.333964');

                    LocationsAPI.LocalSearch(APIVersion, Param, JResponse);
                    LocationsAPI.LocalSearch(APIVersion, Param, XmlResponse);
                    LocationsAPI.LocalSearch(APIVersion, Param, HttpResponse);
                end;
            }


            action(TestFindLocationByAddress)
            {
                ApplicationArea = All;
                Image = TestFile;
                ToolTip = 'TestFindLocationByAddress';

                trigger OnAction()
                var
                    LocationsAPI: Codeunit "jdi BingMaps Locations API";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;

                    APIVersion: Enum "jdi BingMaps FindLocationByAddress API";
                    Param: Dictionary of [Enum "jdi BingMaps FindLocationByAddress Parameter", Text];
                    FindLocationByAddressParam: Enum "jdi BingMaps FindLocationByAddress Parameter";
                begin
                    APIVersion := APIVersion::v1;

                    Clear(Param);
                    Param.Add(FindLocationByAddressParam::adminDistrict, 'WA');
                    Param.Add(FindLocationByAddressParam::locality, 'Seattle');
                    Param.Add(FindLocationByAddressParam::postalCode, '98178');
                    Param.Add(FindLocationByAddressParam::addressLine, '1 Microsoft Way');
                    Param.Add(FindLocationByAddressParam::countryRegion, 'US');

                    LocationsAPI.FindLocationByAddress(APIVersion, Param, JResponse);
                    LocationsAPI.FindLocationByAddress(APIVersion, Param, XmlResponse);
                    LocationsAPI.FindLocationByAddress(APIVersion, Param, HttpResponse);
                end;
            }
        }
    }
}