package auction.server.saleable;

abstract SaleableId(Int) from Int{
  public function toInt():Int{
    return this;
  }
  @:to public function toIntKey(){
    return {
      toInt : toInt
    };
  }
}