package auction.server;

using stx.Test;

import auction.server.test.*;


class Test{
  static public function main(){
    stx.Test.test([
      new SaleableTest(),
      new AuctionTest(),
      new MacroNotClashTest(),
      new TinkPureTest(),
      new MemoryStoreTest(),
      new UserTest(),
      new RouterTest()
    ],[RouterTest]);
  }
}
class MacroNotClashTest extends utest.Test{

}