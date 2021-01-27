package auction.common.model.auction;

abstract AuctionId(Int) from Int{
  public function toInt():Int{
    return this;
  }
  @:to public function toIntKey(){
    return {
      toInt : toInt
    };
  }
}