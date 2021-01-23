package auction.server.router.api;

class Routes extends golgi.Api<Request>{
  var delegate : ApiApi;
  public function new(delegate){
    super();
    this.delegate = delegate;
  }
}