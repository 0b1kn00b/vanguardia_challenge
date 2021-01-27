package auction.client.model.location;

class LocationMemoryModel extends StoreInMemory<LocationVO> implements LocationModelApi{
  public function most_recent():Pledge<Option<LocationVO>,AuctionFailure>{
    return this.values().flat_map(
      (arr) -> 
        arr.last().map(
          (idx:Int) -> this.locate(idx)
        ).def(Pledge.accept.bind(Option.unit()))
    );
  }
  public function previous():Pledge<Option<LocationVO>,AuctionFailure>{
    return this.values().flat_map(
      (arr) -> 
        arr.rdropn(1).last().map(
          (idx:Int) -> this.locate(idx)
        ).def(Pledge.accept.bind(Option.unit()))
    );
  }
}
