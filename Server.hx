using stx.Pico;
using stx.Nano;

import auction.Server;
import auction.server.router.*;

class Server{
  static public function main(){
    trace(js.Node.process.cwd());
    var router                        = auction.server.Module.router();
    var express                       = Express.call();
    var static_                       = Express.static_.call('public');
        express.use(cast static_);//abracadabra
        express.use(new auction.server.Handler(router));
    var ws                            = ExpressWs.call(express);
    var wss                           = ws.app;
        wss
        .ws(
          "/api",
          new auction.server.ws.Handler(auction.server.ws.Module.router()).toWebsocketRequestHandler()
        );
    var server                        = express.listen(3000);
        
  }
}