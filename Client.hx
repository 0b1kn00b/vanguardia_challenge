

import haxe.ui.core.Screen;

import tink.CoreApi;

using stx.Pico;
using stx.Nano;

using auction.common.ModelCommon;

using auction.client.Magic;

using auction.client.UI;
using auction.client.View;
using auction.client.ModelClient;
using auction.client.ViewModel;

import auction.client.ws.Request;
import auction.client.ws.Request.RequestSchema;

@:expose class Client extends auction.client.Ws{
  @:expose static public var instance : Client;

  public final req : RequestSchema;

  public function new(){
    this.req = new RequestSchema();
    super();
  }
  
  static public function main(){
    Client.instance = new Client();
    // haxe.ui.Toolkit.init();

    
    // var view_context_f  = new ViewContextSchema().mock(new Root());
    // trace(view_context_f);
    // var context_f       = new ContextInClientSchema().mock();
    
    // view_context_f.zip(context_f).each(
    //   __.decouple(
    //     (view_context,context) -> {
    //       Client.instance = new auction.Client(view_context,context);
    //     }
    //   )
    // );
 
  }
}
