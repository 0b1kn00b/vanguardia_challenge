package auction.server.context;

@:structInit class ContextCls implements ContextApi{
  public function new(api:ApiApi){
    this.api = api;
  }
  public var api : ApiApi;
}