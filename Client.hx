import haxe.net.WebSocket;

import haxe.ui.core.Screen;

using stx.Pico;
using stx.Nano;

using auction.client.Magic;

using auction.client.UI;
using auction.client.View;
using auction.client.ModelClient;

class Client{
  @:expose static public var instance : auction.Client;

  public function new(){}
  
  static public function main(){
    haxe.ui.Toolkit.init();
    instance   = new auction.Client(new View(new Root()),new ContextInClientCls());
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