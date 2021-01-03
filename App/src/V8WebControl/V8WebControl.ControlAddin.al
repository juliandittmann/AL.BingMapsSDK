controladdin "jdi BingMaps V8 Web Control"
{
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;

    Scripts = 'https://www.bing.com/maps/sdk/mapcontrol?callback=GetMap',
            './src/V8WebControl/Script/BingMaps.js',
            './src/V8WebControl/Script/Interface.js';

    StartupScript = './src/V8WebControl/Script/StartUp.js';

    event ControlAddinLoaded();
    procedure CreateMap(ParamJObject: JsonObject);
    procedure PushPin(Location: JsonObject; PushpinOptions: JsonObject)
}