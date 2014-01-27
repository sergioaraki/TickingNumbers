import bb.cascades 1.0
import bb.system 1.0

Container {
    property bool autostart: false
    property int fromValue: 0
    property int delay: 1000
    property int incremental: 1
    property int value
    property bool flip: false
    function stop(){
        webview.postMessage('stop');
    }
    function start(){
        webview.postMessage('start');
    }
    function stopCallback(){
        webview.postMessage('stop;callback');
    }
    WebView {
        id: webview
        settings.background: Color.Transparent
        url: flip ? "local:///assets/webview/flip.html" : "local:///assets/webview/slide.html"
        onMessageReceived: {
            if (message.data.indexOf('ready') === 0) {
                postMessage('init;'+fromValue+';'+delay+';'+incremental+';'+autostart);
            }
            else if(message.data.indexOf('value') === 0){
                var partsArray = message.data.split(';');
                value = partsArray[1];
            }
        }
    }
    onValueChanged: {
        toast.body = "Value: "+value;
        toast.show();
    }
    attachedObjects: [
        SystemToast {
            id: toast
        }
    ]
}