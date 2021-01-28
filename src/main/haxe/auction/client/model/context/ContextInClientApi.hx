package auction.client.model.context;

interface ContextInClientApi extends auction.common.model.context.ContextApi{
  public var location   : LocationModelApi; 
  public var session_id : Option<SessionId>;
}