package auction.client.ui;

@:build(haxe.ui.macros.ComponentMacros.build("src/main/ui/root.xml"))
class Root extends WindowComponent{
  public function new(){
    super();
  }
  // @:bind(button, MouseEvent.CLICK)
  // function onButton(e) {
  //   // var request       = new Request();
  //   //     this.dispatch(new ClientEvent(request));
  // }
}