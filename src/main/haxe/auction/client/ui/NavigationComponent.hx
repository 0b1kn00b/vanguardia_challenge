package auction.client.ui;

@:build(haxe.ui.macros.ComponentMacros.build("src/main/ui/navigation.xml"))
class NavigationComponent extends Stack{
  public function new(){
    super();
  }
  public function bring_to_top(c:Component){
    this.setComponentIndex(c,this.numComponents -1);
  }
}