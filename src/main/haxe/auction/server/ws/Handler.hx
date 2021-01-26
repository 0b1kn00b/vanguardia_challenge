package auction.server.ws;

import auction.server.router.api.Operation;

abstract Handler(auction.server.ws.RequestHandler) from auction.server.ws.RequestHandler to auction.server.ws.RequestHandler{
  static public var _(default,never)  = HandlerLift;
  public function new(router){
    this = function(ws:Ws,req,next:express.NextFunction){
      trace(req);
      var path          = GolgiExpressPath.fromRequest(req);
      try{
        var operation   = router.route(path,null,req);
      }catch(e:golgi.Error){
        (next:(err:Dynamic) -> Void)(e);
      }
    }
  }
  @:to public function toWebsocketRequestHandler():express_ws.WebsocketRequestHandler{
    return this;
  }
}
class HandlerLift{

}