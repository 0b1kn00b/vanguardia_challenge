package auction.server.router.api.auction;

class Routes extends golgi.Api<Request> implements ModelApi<Auction>{
  var delegate : AuctionApi;
  public function new(delegate){
    super();
    this.delegate = delegate;
  }
}