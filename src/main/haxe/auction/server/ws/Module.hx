package auction.server.ws;

class Module{
  static public function router(){
    var root = new auction.server.router.api.Routes();
    return new auction.server.router.api.Golgi(root);
  }
}