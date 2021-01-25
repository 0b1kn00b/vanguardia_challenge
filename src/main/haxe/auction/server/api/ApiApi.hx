package auction.server.api;

interface ApiApi {
  public var user       : UserModelApi;
  public var session    : SessionModelApi;
  
  public var auction    : AuctionModelApi;
  public var saleable   : SaleableModelApi;
  public var bid        : BidModelApi;
} 