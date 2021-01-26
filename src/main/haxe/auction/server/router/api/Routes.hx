package auction.server.router.api;

class Routes extends golgi.Api<Request>{
  public function saleable(request:Request,subroute : Subroute<Request>){
    var sub_api = new auction.server.router.api.saleable.Routes();
    var sub_glg = new auction.server.router.api.saleable.Golgi(sub_api);
    var res     = subroute.route(sub_glg);
    return res;
  }
  public function bid(request:Request,subroute : Subroute<Request>){
    var sub_api = new auction.server.router.api.bid.Routes();
    var sub_glg = new auction.server.router.api.bid.Golgi(sub_api);
    var res     = subroute.route(sub_glg);
    return res;
  }
  public function auction(request:Request,subroute : Subroute<Request>){
    var sub_api = new auction.server.router.api.auction.Routes();
    var sub_glg = new auction.server.router.api.auction.Golgi(sub_api);
    var res     = subroute.route(sub_glg);
    return res;
  }
  public function user(request:Request,subroute : Subroute<Request>){
    var sub_api = new auction.server.router.api.user.Routes();
    var sub_glg = new auction.server.router.api.user.Golgi(sub_api);
    var res     = subroute.route(sub_glg);
    return res;
  }
  public function session(request:Request,subroute : Subroute<Request>){
    var sub_api = new auction.server.router.api.session.Routes();
    var sub_glg = new auction.server.router.api.session.Golgi(sub_api);
    var res     = subroute.route(sub_glg);
    return res;
  }
}