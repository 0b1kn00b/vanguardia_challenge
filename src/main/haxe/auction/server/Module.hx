package auction.server;

class Module{
  static public function router(){
    var root = new auction.server.router.Routes();
    return new auction.server.router.Golgi(root);
  }
}