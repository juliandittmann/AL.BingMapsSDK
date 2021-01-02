var iframe = window.frameElement;

iframe.parentElement.style.display = 'flex';
iframe.parentElement.style.flexDirection = 'column';
iframe.parentElement.style.flexGrow = '1';

iframe.style.removeProperty('height');
iframe.style.removeProperty('min-height');
iframe.style.removeProperty('max-height');

iframe.style.height = '-webkit-fill-available';

$controlAddIn = document.getElementById('controlAddIn');

BingMapsPage.init();

Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('ControlAddinLoaded', null);