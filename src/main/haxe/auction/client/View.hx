package auction.client;

import haxe.ui.core.Screen;

typedef ViewApi = auction.client.view.ViewApi;

class View{
  var root : Root;
  public function new(root){
    this.root = root;
  }
  public function apply(handler:Request->Void):Future<Report<AuctionFailure>>{
    var t = Future.trigger();
    Screen.instance.addComponent(this.root);
    this.root.registerEvent("request",(evt) -> {
    var result = __.embed().unpack(evt.data);
    result.fold(
        (ok:Request) -> {
          handler(ok);
          null;
        },
        () -> {
          t.trigger(Report.make(E_LostRequest));
          null;
        }
      );
    });
    return t;
  }
} 