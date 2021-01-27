package auction.client.ui;

@:build(haxe.ui.macros.ComponentMacros.build("src/main/ui/view.xml"))
class Root extends VBox{
  public function new(){
    super();
  }
  @:bind(button, MouseEvent.CLICK)
  function onButton(e) {
    // var request       = new Request();
    //     this.dispatch(new ClientEvent(request));
  }
}