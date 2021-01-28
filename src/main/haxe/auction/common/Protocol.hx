package auction.common;

typedef UserProtocol            = auction.common.protocol.UserProtocol;
typedef AuctionProtocol         = auction.common.protocol.AuctionProtocol;
typedef OutgoingClientRequest   = auction.common.protocol.OutgoingClientRequest;
typedef IncomingClientResponse  = auction.common.protocol.IncomingClientResponse;

enum Protocol{
  P_OutgoingClientRequest(req:OutgoingClientRequest);
  P_IncomingClientResponse(res:IncomingClientResponse);
}