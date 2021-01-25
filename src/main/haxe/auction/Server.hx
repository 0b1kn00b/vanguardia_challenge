package auction;

using tink.CoreApi;

using stx.Pico;
using stx.Nano;

class Server{
  
}

typedef AuctionFailure            = stx.fail.AuctionFailure;


typedef ContextSchema 					  = auction.server.context.ContextSchema;
typedef ContextApi                = auction.server.context.ContextApi;
typedef ContextCls 					      = auction.server.context.ContextCls;

typedef ApiApi                    = auction.server.api.ApiApi;
typedef ApiCls                    = auction.server.api.ApiCls;

typedef Item                      = auction.server.store.Item;
typedef StoreApi<V:Item>          = auction.server.store.StoreApi<V>;
typedef MemoryStore<V:Item>       = auction.server.store.MemoryStore<V>;
typedef VO<K>                     = auction.server.store.VO<K>;

typedef AuctionSchema             = auction.server.auction.AuctionSchema;
typedef Auction                   = auction.server.auction.Auction;
typedef AuctionModelApi           = auction.server.auction.AuctionModelApi;
typedef AuctionId 							  = auction.server.auction.AuctionId;
typedef AuctionMemoryModel        = auction.server.auction.AuctionMemoryModel;


typedef BidSchema								  = auction.server.bid.BidSchema;
typedef Bid											  = auction.server.bid.Bid;
typedef BidId										  = auction.server.bid.BidId;
typedef BidMemoryModel 					  = auction.server.bid.BidMemoryModel;
typedef BidModelApi               = auction.server.bid.BidModelApi;

typedef CurrencyValueDef 				  = auction.server.pack.CurrencyValueDef;
typedef CurrencyValue 					  = auction.server.pack.CurrencyValue;

typedef Saleable								  = auction.server.saleable.Saleable;
typedef SaleableId							  = auction.server.saleable.SaleableId;
typedef SaleableModelApi				  = auction.server.saleable.SaleableModelApi;
typedef SaleableMemoryModel       = auction.server.saleable.SaleableMemoryModel;
typedef SaleableMockMemoryModel   = auction.server.saleable.SaleableMockMemoryModel;

typedef User										  = auction.server.user.User;
typedef UserSchema                = auction.server.user.UserSchema;
typedef UserId								    = auction.server.user.UserId;
typedef UserModelApi					    = auction.server.user.UserModelApi;
typedef UserMockMemoryModel       = auction.server.user.UserMockMemoryModel;


typedef Role                      = auction.server.pack.Role;

typedef Session                   = auction.server.session.Session;
typedef SessionSchema             = auction.server.session.SessionSchema;
typedef SessionModelApi           = auction.server.session.SessionModelApi;
typedef SessionMemoryModel        = auction.server.session.SessionMemoryModel;
typedef SessionId                 = auction.server.session.SessionId;


typedef Counter                   = auction.server.pack.Counter;
