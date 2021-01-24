package auction.server.pack;

@:structInit class Bid extends Clazz{
	var user 	: User;
	var bid 	: CurrencyValue;
	var time  : Float;
	var item	: AuctionId;
	
	public var id(default,null)		: Int;
}