codeunit 50026 "jdi BingMaps Elevation Helper"
{
    Access = Public;

    procedure encodePoints(points: Text): Text
    var
        pointList: List of [Dictionary of [integer, Decimal]];
        point: Dictionary of [integer, Decimal];
        Latitude: Decimal;
        Longitude: Decimal;

        newLatitude: Decimal;
        newLongitude: Decimal;

        dy: Decimal;
        dx: Decimal;

        index: Integer;
    begin
        ConvertPointTextToList(points, pointList);


        foreach point in pointList do begin
            newLatitude := Round(point.Get(0) * 10000, 0);
            newLongitude := Round(point.Get(1) * 10000, 0);

            dy := newLatitude - Latitude;
            dx := newLongitude - Longitude;
            Latitude := newLatitude;
            Longitude := newLongitude;



        end;



    end;

    local procedure ConvertPointTextToList(pointText: Text; var pointList: List of [Dictionary of [integer, Decimal]]): Boolean
    var
        pointsList: List of [Text];

        textpoint: Text;
        decimalpoint: Decimal;

        counter: Integer;
        index: Integer;

        pointDictionary: Dictionary of [Integer, Decimal];
    begin
        Clear(pointList);
        Clear(pointDictionary);

        counter := 0;
        pointsList := pointText.Split(',');

        foreach textpoint in pointsList do begin
            textpoint := textpoint.Replace('.', ',');
            Evaluate(decimalpoint, textpoint);

            index := counter mod 2;
            pointDictionary.Add(index, decimalpoint);

            if index = 1 then begin
                pointList.Add(pointDictionary);
                Clear(pointDictionary);
            end;

            counter += 1;
        end;

    end;
}