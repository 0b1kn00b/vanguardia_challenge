package auction.server.pack;

class MemoryModel<T:Item> implements ModelApi<T>{
  var data : Array<T>;

  public function new(){
    this.data = [];
  }
  public function insert(v:T){
    this.data.push(v);
    return Pledge.pure(Noise);
  }
  public function delete(i:Int){
    var value = this.data.search(
      (x:T) -> x.id == i
    );
    var removed = false;
    for(v in value){
      removed = this.data.remove(v);
    }
    return Pledge.pure(removed);
  }
  public function update(v:T):Pledge<Noise,AuctionFailure>{
    var index = this.data.index_of(
      (x) -> x.id == v.id
    );
    if(index != -1){
      this.data[index] = v;
    }
  
    return Pledge.pure(Noise);
  }
}