package auction.server.test;

class NoiseMemoryStore extends MemoryStore<Item>{}

class MemoryStoreTest extends Test{
  public function test(){
    var store = new NoiseMemoryStore();
    var r0    = store.insert({ id : 0 });
        r0.prj().handle(
          (_) -> { 
            equals(1,untyped store.data.length);
          }
        );
  }
}