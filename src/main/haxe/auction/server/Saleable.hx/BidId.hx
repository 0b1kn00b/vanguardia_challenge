package auction.server.bid;

abstract BidId(Int) from Int{
  public function toInt():Int{
    return this;
  }
  @:to public function toIntKey(){
    return {
      toInt : toInt
    };
  }
}