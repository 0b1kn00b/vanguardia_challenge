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
typedef AuctionId 							= auction.server.pack.AuctionId;

typedef ApiApi                  = auction.server.pack.ApiApi;

typedef Bid											= auction.server.pack.Bid;
typedef MemoryBidModel 					= auction.server.pack.MemoryBidModel;

typedef CurrencyValueDef 				= auction.server.pack.CurrencyValueDef;
typedef CurrencyValue 					= auction.server.pack.CurrencyValue;

typedef Saleable								= auction.server.pack.Saleable;

typedef User										= auction.server.pack.User;
typedef UserId 									= Int;

