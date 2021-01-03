/**
 * Called from Business Central
 * @param {JSON} Param 
 */
function CreateMap(Param) {
    BingMapsPage.createMap(Param);
}

/**
 * Called from Business Central
 * @param {JSON} location 
 * @param {JSON} pushpinOptions 
 */
function PushPin(location, pushpinOptions) {
    BingMapsPage.pushPin(location, pushpinOptions);
}