package stx.data.store;

abstract class StoreBackedAbs<T,V:Indexed,E> implements StoreBackedApi<T,V,E>{
  public final store : StoreApi<V,E>;
  public function new(store:StoreApi<V,E>){
    this.store = store;
  }
  public var inner(get,null) : T;
  abstract public function get_inner():T;

  public function toApi():StoreBackedApi<T,V,E>{
    return this;
  }
}