package auction.server.auction;

interface AuctionModelApi extends StoreApi<Auction>{
  public function start(id:AuctionId):Pledge<Noise,AuctionFailure>;

  
  public function place_bid(id:AuctionId,bid:Bid):Pledge<Noise,AuctionFailure>;
}