package auction.server.bid;

class BidSchema extends Clazz{
  static final counter = new Counter();

  public function make(user:UserId,item:AuctionId,bid,time,?id:Int):Bid{
		return new Bid(user,item,bid,time,__.option(id).def(counter.next));
	}
}