package auction.client.ui;

@:build(haxe.ui.macros.ComponentMacros.build("src/main/ui/root.xml"))
class Root extends Box{
  public function new(){
  super();
  }
  // @:bind(button, MouseEvent.CLICK)
  // function onButton(e) {
  //   // var request       = new ProtocolInClient();
  //   //     this.dispatch(new ClientEvent(request));
  // }
}