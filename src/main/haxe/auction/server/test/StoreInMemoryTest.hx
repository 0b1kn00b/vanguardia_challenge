package auction.server.test;

class NoiseStoreInMemory extends StoreInMemory<Indexed,AuctionFailure>{}

class StoreInMemoryTest extends Test{
  public function test(){
    var store = new NoiseStoreInMemory();
    var r0    = store.insert({ id : 0 });
        r0.prj().handle(
          (_) -> { 
            equals(1,untyped store.data.length);
          }
        );
  }
}