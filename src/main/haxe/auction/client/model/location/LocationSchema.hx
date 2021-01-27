package auction.client.model.location;

class LocationSchema extends StoreInMemorySchema<LocationModelApi,LocationVO,AuctionFailure>{
  
  public function create():AppPledge<StoreBackedLocationApi>{
    var value   : StoreBackedApi<LocationModelApi,LocationVO,AuctionFailure>  = new StoreBackedLocationModel(new LocationMemoryModel());
    var result                                                                = Pledge.accept(value);
    return result;
  }
}
typedef StoreBackedLocationApi = StoreBackedApi<LocationModelApi,LocationVO,AuctionFailure>;
class StoreBackedLocationModel extends StoreBackedAbs<LocationModelApi,LocationVO,AuctionFailure> implements StoreBackedApi<LocationModelApi,LocationVO,AuctionFailure>{
  public function new(store:LocationModelApi){
    super(store);
    this.inner = store;
  }
  public function get_inner():LocationModelApi return inner;
}