package stx.data.store;

abstract class StoreInMemorySchema<T,V:Indexed,E> implements StoreSchemaApi<T,V,E>{
  public function new(){}
  abstract public function create():Pledge<StoreBackedApi<T,V,E>,E>;
}