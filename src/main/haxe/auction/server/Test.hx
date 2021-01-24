package auction.server;

using stx.Test;

import auction.server.test.*;



class Test{
  static public function main(){
    stx.Test.test([
      new AuctionTest()
    ],[]);
  }
}