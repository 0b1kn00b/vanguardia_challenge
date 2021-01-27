package auction.common.model.store;

interface StoreApi<V:Indexed> extends stx.data.store.StoreApi<V,AuctionFailure>{}