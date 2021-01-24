package auction.server.pack;

@:structInit class Auction{
	public var start_time 	:  Null<Float>;

	public var duration 		: Float;
	public var bids 				: Array<Bid>;
	public var item 				: SaleableId;

	public var id(default,null)					: Int;
}