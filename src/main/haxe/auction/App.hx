package auction;

import stx.fail.AuctionFailure;

typedef AppErr        = auction.app.AppErr;
typedef AppRes<T>     = Res<T,AuctionFailure>;
typedef AppPledge<T>  = Pledge<T,AuctionFailure>;