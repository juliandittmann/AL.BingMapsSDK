page 50252 "jdi BingMaps Demo Autosuggest"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'BingMaps SDK Test Autosuggest (Manual)';

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

            action(TestAutosuggest)
            {
                ApplicationArea = All;
                Image = TestFile;
                ToolTip = 'TestAutosuggest';

                trigger OnAction()
                var
                    AutosuggestAPI: Codeunit "jdi BingMaps API Autosuggest";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;

                    APIVerion: Enum "jdi BingMaps API Autosuggest";
                    Param: Dictionary of [Enum "jdi BingMaps Parameter Autosuggest", Text];
                    AutosuggestParam: Enum "jdi BingMaps Parameter Autosuggest";
                begin
                    APIVerion := APIVerion::v1;

                    Clear(Param);
                    Param.Add(AutosuggestParam::query, 'El Gaucho');
                    Param.Add(AutosuggestParam::userLocation, '48.604311,-122.981998,5000');
                    Param.Add(AutosuggestParam::"key", GetDefaultAPIKey());

                    AutosuggestAPI.Autosuggest(APIVerion, Param, JResponse);
                    AutosuggestAPI.Autosuggest(APIVerion, Param, XmlResponse);
                    AutosuggestAPI.Autosuggest(APIVerion, Param, HttpResponse);
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