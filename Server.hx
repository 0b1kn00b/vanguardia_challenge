using stx.Pico;
using stx.Nano;

import auction.common.ModelCommon;

import auction.server.ModelServer;

import auction.server.router.*;

class Server{
  static public function play(context){
    // var source_map_support = js.Lib.require('source-map-support');
    //     source_map_support.install();
    //     untyped haxe.CallStack.wrapCallSite = source_map_support.wrapCallSite();

    trace(js.Node.process.cwd());

    var router                        = auction.server.Module.router();
    var express                       = Express.call();
    var static_                       = Express.static_.call('public');
    //websockets ok
    var ws                            = ExpressWs.call(express);
    var wss                           = ws.app;
        wss
        .ws(
          "/api",
          new auction.server.ws.Handler(auction.server.ws.Module.router(),context).toWebsocketRequestHandler()
        );
        wss.use(cast static_);//abracadabra
        wss.use(new auction.server.Handler(context,router));
        
        
    var wss                           = wss.listen(3000);
  }
  static public function main(){
    var context                       = new ContextInServerSchema().mock();
        context.each(play);
  }
}