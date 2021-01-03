codeunit 50026 "jdi BingMaps CalcTruckRoute v1" implements "jdi BingMaps ICalculateTruckRoute"
{
    Access = Internal;

    procedure CalculateTruckRoute(Parameter: Dictionary of [enum "jdi BingMaps Parameter CalculateTruckRoute", Text]; var HttpResponse: HttpResponseMessage): Boolean;
    begin

    end;

    procedure CalculateTruckRoute(Parameter: Dictionary of [enum "jdi BingMaps Parameter CalculateTruckRoute", Text]; var JsonResponse: JsonObject): Boolean;
    begin

    end;

    procedure CalculateTruckRoute(Parameter: Dictionary of [enum "jdi BingMaps Parameter CalculateTruckRoute", Text]; var XmlResponse: XmlDocument): Boolean;
    begin

    end;
}