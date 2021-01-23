package auction.server.router;

class Routes extends golgi.Api<Request>{
  var context : ContextApi;
  public function new(context){
    super();
    this.context = context;
  }
  public function api(request:Request,subroute : Subroute<Request>){
    var sub_api = new auction.server.router.api.Routes(context.api);
    var sub_glg = new auction.server.router.api.Golgi(sub_api);
    var res     = subroute.route(sub_glg);
    return res;
  }
}