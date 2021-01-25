package auction.server.router.api.auction;

class Routes extends golgi.Api<Request>{

  public function start(request:Request):AuctionId{
    trace(request);
    return 0;
  }
  // public function bid(bid:Bid){
  //   var value = this.locate(bid.item)
  // }
}