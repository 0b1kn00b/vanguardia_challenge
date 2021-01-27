package auction.common.model.bid;

class BidSchema extends Clazz{
  static final counter = new Counter();

  public function make(user:UserId,item:AuctionId,bid,time,?id:Int):BidVO{
		return new BidVO(user,item,bid,time,__.option(id).def(counter.next));
	}
}