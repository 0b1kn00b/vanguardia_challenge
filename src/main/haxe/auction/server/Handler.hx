package auction.server;

import auction.server.router.Operation;
import auction.server.router.api.Operation;

abstract Handler(auction.server.express.RequestHandler) from auction.server.express.RequestHandler to auction.server.express.RequestHandler{
  static public var _(default,never)  = HandlerLift;
  public function new(context,router){
    this = _.apply.bind(context,router);
  }
}
class HandlerLift{
  static public function apply(context,router,req:auction.server.express.Request,res:auction.server.express.Response,next:express.NextFunction){
    var path          = GolgiExpressPath.fromRequest(req);
    try{
      var operation   = router.route(path,null,req);
      switch(operation){
        case Home(_)          : 
          var home = '${js.Node.process.cwd()}/templates/home.html';
          res.sendFile(home);
        case _404(_)    : 
        //case Api()
        //case Api()
        default       : (next:Void -> Void)();
      }
    }catch(e:golgi.Error){
      (next:(err:Dynamic) -> Void)(e);
    }
  }
}