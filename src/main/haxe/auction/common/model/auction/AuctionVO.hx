package auction.common.model.auction;

@:structInit class AuctionVO extends UniqueKey<AuctionId>{
	
	public function new(saleable:SaleableId,duration:Float,start_time,bids,id){
		this.saleable 	= saleable.toInt();
		this.duration 	= duration;
		this.start_time = start_time;
		this.bids				= bids;
		this.id					= id;
	}
	public function clone() return new Cloner().clone(this);
		
	public function stamp():Pledge<AuctionVO,AuctionFailure>{
		return if(this.start_time > 0){
			Pledge.reject(__.fault().of(E_AuctionFailed("already started")));
		}else{
			var that 						= clone();
					that.start_time = haxe.Timer.stamp();
			Pledge.accept(that);
		}
	}
	public var end_time(get,null):Option<Float>;
	public function get_end_time(){
		return __.option(start_time).map(
			f -> f + this.duration
		);
	}
	public function has_ended(){
		return end_time.fold(
			(ok) 	-> haxe.Timer.stamp() > ok,
			()		-> false
		);
	}
	public function remaining_time():Option<Float>{
		return this.end_time.map(ok -> ok - haxe.Timer.stamp());
  }
	public var saleable 							 	: SaleableId;
	public var duration 								: Float;
	public var start_time 							: Null<Float>;

	public var bids 										: Array<BidId>;
	
	public function get_uid():AuctionId{
		return this.id;
	}
}
