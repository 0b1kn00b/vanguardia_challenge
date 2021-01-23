package auction.server.pack;

class Context implements ContextApi{
  public function new(){
    this.api = new BootstrapApi();
  }
  public var api : ApiApi;
}