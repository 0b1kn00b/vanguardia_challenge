package stx.data;

typedef Indexed                                           = stx.data.store.Indexed;
typedef UniqueKey<K>                                      = stx.data.store.UniqueKey<K>;
typedef StoreApi<T:Indexed,E>                             = stx.data.store.StoreApi<T,E>;

typedef StoreInMemory<V:Indexed,E>                        = stx.data.store.StoreInMemory<V,E>;
typedef StoreSchemaApi<T:StoreApi<V,E>,V:Indexed,E>       = stx.data.store.StoreSchemaApi<T,V,E>;
typedef StoreInMemorySchema<T:StoreApi<V,E>,V:Indexed,E>  = stx.data.store.StoreInMemorySchema<T,V,E>;
typedef StoreBackedApi<T,V:Indexed,E>                     = stx.data.store.StoreBackedApi<T,V,E>;
typedef StoreBackedAbs<T,V:Indexed,E>                     = stx.data.store.StoreBackedAbs<T,V,E>;