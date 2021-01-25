package auction.server.test;

class SaleableTest extends Test{
  public function test(){
    var model   = SaleableMockMemoryModel.pull();
    var value   = model.fudge();
  }
}