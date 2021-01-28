package auction.client.model.context;

@:structInit class ContextInClientCls implements ContextInClientApi{
  public function new(api:ApiApi,location:LocationModelApi){
    this.api        = api;
    this.location   = location;
    this.session_id = None;
  }
  public var location   : LocationModelApi;
  public var api        : ApiApi;
  public var session_id : Option<SessionId>;
}