page 50203 "jdi BingMaps Test Autosuggest"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'BingMaps SDK Test Manual Autosuggest';

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

                    Param: Dictionary of [Enum "jdi BingMaps Autosuggest Parameter", Text];
                    AutosuggestParam: Enum "jdi BingMaps Autosuggest Parameter";
                begin
                    Clear(Param);
                    Param.Add(AutosuggestParam::query, 'El Gaucho');
                    Param.Add(AutosuggestParam::userLocation, '48.604311,-122.981998,5000');

                    AutosuggestAPI.Autosuggest(Param, JResponse);
                    AutosuggestAPI.Autosuggest(Param, XmlResponse);
                    AutosuggestAPI.Autosuggest(Param, HttpResponse);
                end;
            }

        }
    }

    var
        myInt: Integer;
}