package stx.data.store;

interface StoreSchemaApi<T,V:Indexed,E>{
  public function create():Pledge<StoreBackedApi<T,V,E>,E>;
}