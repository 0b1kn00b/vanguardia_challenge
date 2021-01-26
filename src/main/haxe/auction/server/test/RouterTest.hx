package auction.server.test;

import auction.server.Handler;

class RouterTest extends Test{
  public function test(){
    var context = new ContextSchema().mock().fudge().fudge();
    var routes  = new auction.server.router.Routes();
    var golgi   = new auction.server.router.Golgi(routes);
    var val     = golgi.route(["api","auction","start"],null,{ id : "x" });
    trace(val);
  }
}