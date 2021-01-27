package auction;



using auction.client.Magic;
using auction.client.View;
using auction.client.ModelClient;

typedef RequestSum      = auction.client.Request.RequestSum;
typedef Request         = auction.client.Request;
typedef UserRequest     = auction.client.Request.UserRequest;

typedef ClientEventCls  = auction.client.ClientEvent.ClientEventCls;
typedef ClientEvent     = auction.client.ClientEvent;

class Client{
  var view    : View;
  var data    : ContextInClientApi;

  public function new(view,data){
    this.view   = view;
    this.data   = data;
  }

  public function react():Future<Report<AuctionFailure>>{
    return this.view.apply(handle);
  }
  public function handle(request:Request){
    switch(request){
      //case UserReq(SignIn(form)) : model
      default : 
    }
  }
}