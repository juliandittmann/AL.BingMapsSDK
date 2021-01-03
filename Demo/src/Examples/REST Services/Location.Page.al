page 50256 "jdi BingMaps Demo Location"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'BingMaps SDK Demo Location (Manual)';

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
                    LocationsAPI: Codeunit "jdi BingMaps API Locations";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;

                    APIVersion: Enum "jdi BingMaps API FindLocationByPoint";
                    Param: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByPoint", Text];
                    FindLocationByPointParam: Enum "jdi BingMaps Parameter FindLocationByPoint";
                begin
                    APIVersion := APIVersion::v1;

                    Clear(Param);
                    Param.Add(FindLocationByPointParam::point, '47.64054,-122.12934');
                    Param.Add(FindLocationByPointParam::"key", GetDefaultAPIKey());

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
                    LocationsAPI: Codeunit "jdi BingMaps API Locations";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;


                    APIVersion: Enum "jdi BingMaps API FindLocationByQuery";
                    Param: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByQuery", Text];
                    FindLocationByQueryParam: Enum "jdi BingMaps Parameter FindLocationByQuery";
                begin
                    APIVersion := APIVersion::v1;

                    Clear(Param);
                    Param.Add(FindLocationByQueryParam::query, 'White House');
                    Param.Add(FindLocationByQueryParam::"key", GetDefaultAPIKey());

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
                    LocationsAPI: Codeunit "jdi BingMaps API Locations";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;

                    APIVersion: Enum "jdi BingMaps API LocationRecognition";
                    Param: Dictionary of [Enum "jdi BingMaps Parameter LocationRecognition", Text];
                    LocationRecognitionParam: Enum "jdi BingMaps Parameter LocationRecognition";
                begin
                    APIVersion := APIVersion::v1;

                    Clear(Param);
                    Param.Add(LocationRecognitionParam::point, '47.610679194331169,-122.10788659751415');
                    Param.Add(LocationRecognitionParam::"key", GetDefaultAPIKey());

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
                    LocationsAPI: Codeunit "jdi BingMaps API Locations";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;

                    APIVersion: Enum "jdi BingMaps API LocalSearch";
                    Param: Dictionary of [Enum "jdi BingMaps Parameter LocalSearch", Text];
                    LocalSearchParam: Enum "jdi BingMaps Parameter LocalSearch";
                begin
                    APIVersion := APIVersion::v1;

                    Clear(Param);
                    Param.Add(LocalSearchParam::query, 'coffee');
                    Param.Add(LocalSearchParam::userLocation, '47.602038,-122.333964');
                    Param.Add(LocalSearchParam::"key", GetDefaultAPIKey());

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
                    LocationsAPI: Codeunit "jdi BingMaps API Locations";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;

                    APIVersion: Enum "jdi BingMaps API FindLocationByAddress";
                    Param: Dictionary of [Enum "jdi BingMaps Parameter FindLocationByAddress", Text];
                    FindLocationByAddressParam: Enum "jdi BingMaps Parameter FindLocationByAddress";
                begin
                    APIVersion := APIVersion::v1;

                    Clear(Param);
                    Param.Add(FindLocationByAddressParam::adminDistrict, 'WA');
                    Param.Add(FindLocationByAddressParam::locality, 'Seattle');
                    Param.Add(FindLocationByAddressParam::postalCode, '98178');
                    Param.Add(FindLocationByAddressParam::addressLine, '1 Microsoft Way');
                    Param.Add(FindLocationByAddressParam::countryRegion, 'US');
                    Param.Add(FindLocationByAddressParam::"key", GetDefaultAPIKey());

                    LocationsAPI.FindLocationByAddress(APIVersion, Param, JResponse);
                    LocationsAPI.FindLocationByAddress(APIVersion, Param, XmlResponse);
                    LocationsAPI.FindLocationByAddress(APIVersion, Param, HttpResponse);
                end;
            }
        }
    }

    local procedure GetDefaultAPIKey(): Text
    var
        BingMapsSDKDemoSetup: Record "jdi BingMaps Demo Setup";
    begin
        if BingMapsSDKDemoSetup.Get() then
            exit(BingMapsSDKDemoSetup.GetDefaultAPIKey());
    end;
}