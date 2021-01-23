package auction.server.pack;

@:structInit class Auction{
	var start_time 	: Float;
	var duration 		: Float;
	var bids 				: Array<Bid>;
	var item 				: SaleableId;
	public var id(default,null)					: Int;
}