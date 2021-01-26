package auction.server.auction;

class AuctionMemoryModel implements AuctionModelApi extends MemoryStore<Auction>{
  var bids : BidModelApi;

  public function new(bids){
    super();
    this.bids = bids;
  }
  static public function make(bids){
    return new AuctionMemoryModel(bids);
  }
  public function start(id:AuctionId){
    return this.locate(id.toInt()).flat_map(
      (auction:Option<Auction>) -> auction.fold(
        (ok) -> ok.stamp().flat_map(
          (auction) -> this.update(auction)
        ),
        () -> Pledge.accept(Noise)
      )
    );
  }
  public function place_bid(id:AuctionId,bid:Bid){
    return this.locate(id.toInt()).flat_map(
      (auction) -> auction.fold(
        (ok) -> {
          return bids.insert(bid).flat_map(
            (_) -> {
              var next = new Cloner().clone(ok);
                  next.bids.push(bid.uid);
              return this.update(next);
            }
          );
        },
        () -> Pledge.reject(__.fault().of(E_NoSuchAuction))
      )
    );
  }
}