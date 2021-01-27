package auction.client.model.context;

class ContextInClientSchema extends Clazz{
  public function mock():Pledge<ContextInClientApi,AuctionFailure>{
    var location_schema       = new LocationSchema().create();
    var common_context        = new ContextSchema().mock();
    
    // return common_context.zip(location_schema).map(
    //   __.decouple(
    //     (context:ContextApi,location:LocationModelApi) -> {
    //       return ({
    //         api       : context.api,
    //         location  : location
    //       }:ContextInClientCls);
    //     }
    //   )
    // );
    return null;
  }
}