package auction.server.test;

using auction.Server;

class AuctionTest extends Test{
  public function test_immutability(){
    var bid_model     = new BidMemoryModel();
    var auction_model = new AuctionMemoryModel(bid_model);

    var auction = Auction.make(
      1,
      10000,
      -999.9,
      [],
      0
    );
        auction = auction.stamp().fudge().fudge();

    auction_model.insert(auction).fudge();
    same([0],auction_model.values().fudge().fudge());

    var session_model = new SessionMemoryModel();
    var user_model    = new UserSchema().pull(session_model).fudge().fudge();

    var user          = user_model.locate(0).fudge().fudge().fudge();
    var bid           = new BidSchema().make(user.uid,auction.uid,100000000,haxe.Timer.stamp());

    var result        = auction_model.place_bid(auction.uid,bid).fudge();
    
    trace(untyped bid_model.data);
    trace(untyped auction_model.data);
  }
  public function _test(){
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
    
    // var v = new AuctionMemoryStore();
    //     v.insert()
  }
}