package auction.common.model.api;

class ApiSchema extends Clazz{
  public function mock():Pledge<ApiApi,AuctionFailure>{
    var bid       = new BidMemoryModel();
    var session   = new SessionMemoryModel();
    var user      = new UserSchema().pull(session);
    var saleable  = SaleableMockMemoryModel.pull();
    var auction   = AuctionMemoryModel.make(bid);

    var pull = (user:UserModelApi,saleable:SaleableModelApi) -> ((({
        session   : session,
        user      : user,
        bid       : bid,
        auction   : auction,
        saleable  : saleable
      }:ApiCls)
    ):ApiApi);

    var api = user.zip(saleable).map(
      __.decouple(pull)
    );
    return api;
    // var v = new AuctionStoreInMemory();
    //     v.insert()
  }
}