package stx.data.store;

interface StoreApi<V,E>{
  public function insert(v:V):Pledge<Noise,E>;
  public function update(v:V):Pledge<Noise,E>;
  public function delete(i:Int):Pledge<Bool,E>;
  public function locate(i:Int):Pledge<Option<V>,E>;

  public function values():Pledge<Array<Int>,E>;
}