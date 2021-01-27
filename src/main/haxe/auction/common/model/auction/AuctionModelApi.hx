package auction.common.model.auction;

interface AuctionModelApi extends StoreApi<AuctionVO>{
  public function start(id:AuctionId):Pledge<Noise,AuctionFailure>;

  
  public function place_bid(id:AuctionId,bid:BidVO):Pledge<Noise,AuctionFailure>;
}