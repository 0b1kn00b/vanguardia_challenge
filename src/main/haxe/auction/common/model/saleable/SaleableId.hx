package auction.common.model.saleable;

abstract SaleableId(Int) from Int{
  public function toInt():Int{return this;}
}