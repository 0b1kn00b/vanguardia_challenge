package auction.client.model.context;

@:structInit class ContextInClientCls implements ContextInClientApi{
  public function new(api:ApiApi,location:LocationModelApi){
    this.api      = api;
    this.location = location;
  }
  public var location : LocationModelApi;
  public var api      : ApiApi;
}