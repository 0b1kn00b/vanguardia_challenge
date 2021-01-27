package auction.common;

typedef AuctionFailure            = stx.fail.AuctionFailure;

typedef StoreApi<V:Indexed>       = auction.common.model.store.StoreApi<V>;
typedef StoreInMemory<V:Indexed>  = auction.common.model.store.StoreInMemory<V>;

typedef ContextSchema 					  = auction.common.model.context.ContextSchema;
typedef ContextApi                = auction.common.model.context.ContextApi;
typedef ContextCls 					      = auction.common.model.context.ContextCls;

typedef ApiApi                    = auction.common.model.api.ApiApi;
typedef ApiCls                    = auction.common.model.api.ApiCls;
typedef ApiSchema                 = auction.common.model.api.ApiSchema;

typedef AuctionSchema             = auction.common.model.auction.AuctionSchema;
typedef AuctionVO                 = auction.common.model.auction.AuctionVO;
typedef AuctionModelApi           = auction.common.model.auction.AuctionModelApi;
typedef AuctionId 							  = auction.common.model.auction.AuctionId;
typedef AuctionMemoryModel        = auction.common.model.auction.AuctionMemoryModel;

typedef BidSchema								  = auction.common.model.bid.BidSchema;
typedef BidVO											= auction.common.model.bid.BidVO;
typedef BidId										  = auction.common.model.bid.BidId;
typedef BidMemoryModel 					  = auction.common.model.bid.BidMemoryModel;
typedef BidModelApi               = auction.common.model.bid.BidModelApi;

typedef SaleableVO								= auction.common.model.saleable.SaleableVO;
typedef SaleableSchema            = auction.common.model.saleable.SaleableSchema;
typedef SaleableId							  = auction.common.model.saleable.SaleableId;
typedef SaleableModelApi				  = auction.common.model.saleable.SaleableModelApi;
typedef SaleableMemoryModel       = auction.common.model.saleable.SaleableMemoryModel;
typedef SaleableMockMemoryModel   = auction.common.model.saleable.SaleableMockMemoryModel;

typedef UserVO										= auction.common.model.user.UserVO;
typedef UserSchema                = auction.common.model.user.UserSchema;
typedef UserId								    = auction.common.model.user.UserId;
typedef UserModelApi					    = auction.common.model.user.UserModelApi;
typedef UserMockMemoryModel       = auction.common.model.user.UserMockMemoryModel;

typedef SessionVO                 = auction.common.model.session.SessionVO;
typedef SessionSchema             = auction.common.model.session.SessionSchema;
typedef SessionModelApi           = auction.common.model.session.SessionModelApi;
typedef SessionMemoryModel        = auction.common.model.session.SessionMemoryModel;
typedef SessionId                 = auction.common.model.session.SessionId;

typedef Counter                   = auction.common.pack.Counter;
typedef CurrencyValue             = auction.common.pack.CurrencyValue;
typedef CurrencyValueDef          = auction.common.pack.CurrencyValueDef;
typedef Role                      = auction.common.pack.Role;
