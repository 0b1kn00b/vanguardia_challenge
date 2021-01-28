package auction.common.protocol;

enum IncomingClientResponse{
  ICR_Error(f:AuctionFailure);
  ICR_UnImplemented(protocol:Protocol);
  ICR_Session(opt:Option<SessionId>);
}