package auction.client;

import haxe.net.WebSocket;
import signals.Signal1;

using auction.common.Form;
using auction.common.ModelCommon;
using auction.common.Protocol;

using auction.client.Magic;
using auction.client.View;
using auction.client.ModelClient;
using auction.client.ProtocolInClient;
using auction.client.ViewModel;


@:expose class Ws extends Signal1<Protocol>{
  private var ws : WebSocket;
  public function new(){
    super();
    this.ws = WebSocket.create("ws://127.0.0.1:3000/api", ['echo-protocol'], false);
    ws.onopen = function() {
      trace('open!');  
      ws.sendString('plumalum');
    };
    ws.onmessageString = function(message) {
      var result : Protocol = haxe.Unserializer.run(message);
      this.dispatch(result);
    }
    ws.onerror = function(message:String):Void{
      trace('error: $message');
    } 
    this.add(handler);
  }
  private function handler(protocol:Protocol){
    trace(protocol);
    switch(protocol){
      case P_OutgoingClientRequest(req) : 
        this.ws.sendString(haxe.Serializer.run(req));
      case P_IncomingClientResponse(res) : 
        this.respond(res);
    }
  }
  public function respond(res:IncomingClientResponse):Void{
    switch(res){
      default : 
    }
  }
  public function request(req:OutgoingClientRequest){
    this.dispatch(P_OutgoingClientRequest(req));
  }
}