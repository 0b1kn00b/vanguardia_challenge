package auction.server.context;

class ContextSchema extends Clazz{
  public function mock(){
    var bid       = new BidMemoryModel();
    var session   = new SessionMemoryModel();
    var user      = new UserSchema().pull(session);
    var saleable  = SaleableMockMemoryModel.pull();
    var auction   = AuctionMemoryModel.make(bid);

    var pull = (user:UserModelApi,saleable:SaleableModelApi) -> (({
      api : ({
        session   : session,
        user      : user,
        bid       : bid,
        auction   : auction,
        saleable  : saleable
      }:ApiCls)
    }:ContextCls):ContextApi);

    var context = user.zip(saleable).map(
      __.decouple(pull)
    );
    return context;
  }
}