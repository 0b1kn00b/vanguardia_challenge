package auction;

using tink.CoreApi;

using stx.Pico;
using stx.Nano;

class Server{
  
}

typedef AuctionFailure          = stx.fail.AuctionFailure;

typedef ContextApi              = auction.server.pack.ContextApi;
typedef Context 								= auction.server.pack.Context;

typedef Item                    = auction.server.pack.Item;
typedef ModelApi<T:Item>        = auction.server.pack.ModelApi<T>;

typedef Auction                 = auction.server.pack.Auction;
typedef AuctionModelApi         = auction.server.pack.AuctionModelApi;
typedef ApiApi                  = auction.server.pack.ApiApi;

@:structInit class User extends Clazz{
	var name	: String;
	var id 		: UserId;
	var bids 	: Array<Int>;
}
typedef UserId = Int;

class Saleable{
	var name 	: String;
	var id 		: SaleableId;
}
typedef SaleableId = Int;

typedef CurrencyValue = Int;

class Bid{
	var user 	: User;
	var bid 	: CurrencyValue;
	var time  : Float;
	var item	: SaleableId;
	public var id(default,null)		: Int;
}

typedef MemoryBidModel = auction.server.pack.MemoryBidModel;


