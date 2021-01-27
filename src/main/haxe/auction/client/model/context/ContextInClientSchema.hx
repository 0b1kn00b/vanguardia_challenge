package auction.client.model.context;

class ContextInClientSchema extends Clazz{
  public function mock():Pledge<ContextInClientApi,AuctionFailure>{
    var location_schema       = new LocationSchema().create();
    var common_context        = new ContextSchema().mock();
    var map                   = __.decouple(
      (context:ContextApi,location:StoreBackedLocationApi) -> {
        return (({
          api       : context.api,
          location  : location.inner
        }:ContextInClientCls):ContextInClientApi);
      }
    );
    var result                = common_context.zip(location_schema).map(map);
    return result;
  }
}