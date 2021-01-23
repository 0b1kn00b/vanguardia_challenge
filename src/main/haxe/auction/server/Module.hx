package auction.server;

class Module{
  static public function router(context:ContextApi){
    var root = new auction.server.router.Routes(context);
    return new auction.server.router.Golgi(root);
  }
}