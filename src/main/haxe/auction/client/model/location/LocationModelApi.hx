package auction.client.model.location;

interface LocationModelApi extends StoreApi<LocationVO>{
  public function most_recent():Pledge<Option<LocationVO>,AuctionFailure>;
  public function previous():Pledge<Option<LocationVO>,AuctionFailure>;
}
