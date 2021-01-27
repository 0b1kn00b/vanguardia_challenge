package auction.client.model.location;

abstract LocationId(Int) from Int{
  public function toInt():Int{return this;}
}