package auction.common.model.user;

abstract UserId(Int) from Int{
  public function toInt():Int return this;
}