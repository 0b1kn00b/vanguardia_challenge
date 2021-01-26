import haxe.net.WebSocket;

import feathers.controls.Application;
import feathers.controls.Button;
import feathers.events.TriggerEvent;

class ExampleProject extends Application {
  public function new() {
    super();

    var button = new Button();
    button.text = "Click Me";
    button.addEventListener(TriggerEvent.TRIGGER, onTrigger);
    addChild(button);
  }

  private function onTrigger(event:TriggerEvent):Void {
    trace("Button was clicked or tapped");
  }
}

@:expose class Client{

  public function new(){}
  
  static public function main(){
    var project = new ExampleProject();
  }
}
class Ws{
  public var ws : WebSocket;
  public function new(){
    this.ws = WebSocket.create("ws://127.0.0.1:3000/api", ['echo-protocol'], false);
    ws.onopen = function() {
      trace('open!');  
      ws.sendString('plumalum');
    };
    ws.onmessageString = function(message) {
        trace('message from server!' + (message.length > 200 ? message.substr(0, 200) + '...' : message));
        trace('message.length=' + message.length);
    }
    ws.onerror = function(message:String):Void{
      trace('error: $message');
    } 
  }
}