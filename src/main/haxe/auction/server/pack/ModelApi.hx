package auction.server.pack;

interface ModelApi<T:Item>{

  public function insert(v:T):Pledge<Noise,AuctionFailure>;
  public function update(v:T):Pledge<Noise,AuctionFailure>;
  public function delete(i:Int):Pledge<Bool,AuctionFailure>;
  public function locate(i:Int):Pledge<Option<T>,AuctionFailure>;
}