import auction.Server;
import auction.server.router.*;

class Server{
  static public function main(){
    var router                        = auction.server.Module.router(new Context());
    var express                       = Express.call();
    var static_                       = Express.static_.call('public');
        express.use(cast static_);
        express.use(
          (req,res,next:express.NextFunction) -> {
            var operation = router.route(GolgiExpressPath.fromRequest(req),null,req);
            (next:Void->Void)();
          }
        );
    var server                        = express.listen(3000);
        
  }
}
abstract GolgiExpressPath(Array<String>) from Array<String> to Array<String>{
  @:from static public function fromRequest(self:Request):GolgiExpressPath{
    return self.path.split("/");
  }
}