package auction.common.model.session;

abstract SessionId(Int) from Int{
  public function toInt():Int{
    return this;
  }
  @:to public function toIntKey(){
    return {
      toInt : toInt
    };
  }
}