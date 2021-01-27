package stx.data;

typedef Indexed                     = stx.data.store.Indexed;
typedef UniqueKey<K>                = stx.data.store.UniqueKey<K>;
typedef StoreApi<T:Indexed,E>       = stx.data.store.StoreApi<T,E>;
typedef StoreInMemory<T:Indexed,E>  = stx.data.store.StoreInMemory<T,E>;