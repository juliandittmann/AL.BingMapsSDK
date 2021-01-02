var BingMapsPage;
(function (BingMapsPage) {
    //Config for ElementIds
    var Config = {
        mapContainer: "mapContainer"
    };

    var map;

    BingMapsPage.init = function () {
        var Html = BingMapsPage.getHtml();
        $controlAddIn.append(Html);
    }


    BingMapsPage.createMap = function (param) {
        map = new Microsoft.Maps.Map('#' + Config.mapContainer, param);
    }

    BingMapsPage.pushPin = function (location, pushpinOptions) { //TODO: use location
        
        var center = map.getCenter(); 

        var pin = new Microsoft.Maps.Pushpin(center, pushpinOptions);
        map.entities.push(pin);
    }

    BingMapsPage.getHtml = function () {
        let bingmapsdiv = document.createElement("div");
        bingmapsdiv.setAttribute("id", Config.mapContainer);

        return bingmapsdiv;
    }
})(BingMapsPage || (BingMapsPage = {}));
