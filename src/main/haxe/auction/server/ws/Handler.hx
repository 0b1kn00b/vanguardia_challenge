package auction.server.ws;

import auction.server.router.api.Operation;

abstract Handler(auction.server.ws.RequestHandler) from auction.server.ws.RequestHandler to auction.server.ws.RequestHandler{
  static public var _(default,never)  = HandlerLift;
  public function new(router,model){
    var handler = new HandlerImpl(model);
    trace('created');
    this = function(ws:Ws,req,next:express.NextFunction){
      trace("routing");
      ws.on('message', function(msg:String) {
        var decode : Protocol = haxe.Unserializer.run(msg);
        trace(decode);
        handler.apply(decode).each(
          (res) -> ws.send(haxe.Serializer.run(P_IncomingClientResponse(res)))
        );
      });
      ws.on('open',
        () -> {
          trace("connected");
        }
      );
      // var path          = GolgiExpressPath.fromRequest(req);
      // try{
      //   var operation   = router.route(path,null,req);
      // }catch(e:golgi.Error){
      //   (next:(err:Dynamic) -> Void)(e);
      // }
    }
  }
  @:to public function toWebsocketRequestHandler():express_ws.WebsocketRequestHandler{
    return this;
  }
}
class HandlerImpl{
  public var model : ContextInServerApi;
  public function new(model){
    this.model = model;
  }
  public function apply(protocol:Null<Protocol>):AppPledge<IncomingClientResponse>{
    return switch(protocol){
      case P_OutgoingClientRequest(OCR_User(SignIn(form)))    : 
        model.api.user.sign_in(form).map(ICR_Session);
      default                                                 : 
        Pledge.accept(ICR_UnImplemented(protocol));
      case null                                               : 
        Pledge.accept(ICR_Error(E_EmptyWsRequest));
    }
  }

}
class HandlerLift{}