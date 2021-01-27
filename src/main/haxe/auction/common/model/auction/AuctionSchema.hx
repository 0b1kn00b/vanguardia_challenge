package auction.common.model.auction;

class AuctionSchema extends Clazz{
  public function make(saleable:SaleableId,duration:Float,start_time,bids,id){
		return new AuctionVO(saleable,duration,start_time,bids,id);
	}
}