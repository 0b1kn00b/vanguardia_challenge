package auction;

using auction.client.Magic;
using auction.client.View;
using auction.client.ModelClient;
using auction.client.ProtocolInClient;
using auction.client.ViewModel;

class Client{

  public var view    : ViewContextApi;
  public var data    : ContextInClientApi;

  public function new(view,data){
    this.view   = view;
    this.data   = data;
  }
  
  public function react():Future<Report<AuctionFailure>>{
    var t       = Future.trigger();
    var handler = null;
    this.view.add(
      handler = function (x:AppRes<ProtocolInClient>) : Void {
        this.view.route(x).each(
          (_) -> {},
          (e) -> {
            this.view.remove(handler);
            t.trigger(Report.pure(e));
          }
        );
      }
    );
    return t.asFuture();
  }
}