page 50203 "jdi BingMaps Test Autosuggest"
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
                    AutosuggestAPI: Codeunit "jdi BingMaps Autosuggest API";
                    JResponse: JsonObject;
                    XmlResponse: XmlDocument;
                    HttpResponse: HttpResponseMessage;

                    APIVerion: Enum "jdi BingMaps Autosuggest API";
                    Param: Dictionary of [Enum "jdi BingMaps Autosuggest Parameter", Text];
                    AutosuggestParam: Enum "jdi BingMaps Autosuggest Parameter";
                begin
                    APIVerion := APIVerion::v1;

                    Clear(Param);
                    Param.Add(AutosuggestParam::query, 'El Gaucho');
                    Param.Add(AutosuggestParam::userLocation, '48.604311,-122.981998,5000');

                    AutosuggestAPI.Autosuggest(APIVerion, Param, JResponse);
                    AutosuggestAPI.Autosuggest(APIVerion, Param, XmlResponse);
                    AutosuggestAPI.Autosuggest(APIVerion, Param, HttpResponse);
                end;
            }

        }
    }

    var
        myInt: Integer;
}