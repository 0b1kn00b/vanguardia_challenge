package auction.client.model.location;

class LocationSchema extends StoreInMemorySchema<LocationModelApi,LocationVO,AuctionFailure>{
  
  public function create(){
    var value   = new StoreBackedLocationModel(new LocationMemoryModel());
    var result  = Pledge.accept(value.toApi());
    return result;
  }
}
class StoreBackedLocationModel extends StoreBackedAbs<LocationModelApi,LocationVO,AuctionFailure>{
  public function new(store:LocationModelApi){
    super(store);
    this.inner = store;
  }
  public function get_inner() return inner;
}