package auction;


using auction.client.Magic;
using auction.client.View;
using auction.client.ModelClient;
using auction.client.Request;
using auction.client.ViewModel;

typedef ClientEventCls  = auction.client.ClientEvent.ClientEventCls;
typedef ClientEvent     = auction.client.ClientEvent;

class Client{

  var view    : ViewContextApi;
  var data    : ContextInClientApi;

  public function new(view,data){
    this.view   = view;
    this.data   = data;
  }
  
  public function react():Future<Report<AuctionFailure>>{
    var t       = Future.trigger();
    var handler = null;
    this.view.add(
      handler = function (x:AppRes<Request>) : Void {
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