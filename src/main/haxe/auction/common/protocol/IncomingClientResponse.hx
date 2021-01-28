package auction.common.protocol;

enum IncomingClientResponse{
  IC_UnImplemented(protocol:Protocol);
  IC_SessionId(id:SessionId);
}