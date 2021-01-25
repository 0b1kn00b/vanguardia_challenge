package auction.server.store;

interface StoreApi<V>{
  public function insert(v:V):Pledge<Noise,AuctionFailure>;
  public function update(v:V):Pledge<Noise,AuctionFailure>;
  public function delete(i:Int):Pledge<Bool,AuctionFailure>;
  public function locate(i:Int):Pledge<Option<V>,AuctionFailure>;

  public function values():Pledge<Array<Int>,AuctionFailure>;
}