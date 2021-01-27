package stx.data.store;

//Duck or Grouse
interface StoreBackedApi<T,V:Indexed,E>{
  public var store(default,null)  : StoreApi<V,E>;
  public var inner(get,null)      : T;
  public function get_inner():T;

  public function toApi():StoreBackedApi<T,V,E>;
}