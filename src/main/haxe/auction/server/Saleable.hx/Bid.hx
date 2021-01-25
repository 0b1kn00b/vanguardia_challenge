package auction.server.bid;


@:structInit class Bid extends VO<BidId>{
	public function new(user:UserId,item:AuctionId,bid:CurrencyValue,time,id){
		this.user = user;
		this.item = item;
		this.bid	= bid;
		this.time = time;
		this.id 	= id;
	}
		
	public var user 						: UserId;
	public var item							: AuctionId;
	public var bid 							: CurrencyValue;
	public var time  						: Float;
	
	
	public var id								: Int;
	public function get_uid():BidId{
		return id;
	}
}