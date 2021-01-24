package auction.server.router.api.auction;

class Routes extends golgi.Api<Request> implements ModelApi<Auction>{
  var delegate : AuctionApi;
  public function new(delegate){
    super();
    this.delegate = delegate;
  }

  public function start(id:Int){
    var now = haxe.Timer.stamp();
  }
  // public function bid(bid:Bid){
  //   var value = this.locate(bid.item)
  // }
}