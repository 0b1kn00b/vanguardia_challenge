package auction.common.model.bid;

abstract BidId(Int) from Int{
  public function toInt():Int{return this;}
}