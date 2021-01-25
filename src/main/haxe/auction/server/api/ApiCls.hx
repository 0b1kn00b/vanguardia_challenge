package auction.server.api;

@:structInit class ApiCls implements ApiApi{
  
  public var user       : UserModelApi;
  public var session    : SessionModelApi;

  public var auction    : AuctionModelApi;
  public var saleable   : SaleableModelApi; 
  public var bid        : BidModelApi;
  
  public function new(user,session,auction,saleable,bid){
    this.user     = user;
    this.session  = session;
    
    this.auction  = auction;
    this.saleable = saleable; 
    this.bid      = bid;
  }
}