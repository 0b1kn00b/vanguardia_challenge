package stx.data.store;

class StoreInMemory<V:Indexed,E> implements StoreApi<V,E> extends Clazz{
  var data : Array<V>;

  public function new(){
    super();
    this.data = [];
  }
  public function insert(v:V):Pledge<Noise,E>{
    this.data.push(v);

    return Pledge.accept(Noise);
  }
  public function delete(i:Int):Pledge<Bool,E>{
    var value = this.data.search(
      (x:V) -> x.id == i
    );
    var removed = false;
    for(v in value){
      removed = this.data.remove(v);
    }
    return Pledge.accept(removed);
  }
  public function update(v:V):Pledge<Noise,E>{
    var index = this.data.index_of(
      (x) -> x.id == v.id
    );
    if(index != -1){
      this.data[index] = v;
    }
  
    return Pledge.accept(Noise);
  }
  public function locate(i:Int):Pledge<Option<V>,E>{
    return Pledge.accept(this.data.search((x:V) -> x.id == i));
  }
  public function values():Pledge<Array<Int>,E>{
    return Pledge.accept(this.data.map(
      (i) -> i.id
    ));
  }
  public function toString(){
    var name = this.identifier().name;
    var data = this.data.map(_ -> Std.string(_)).join(", ");
    return '$name($data)';
  }
  
}