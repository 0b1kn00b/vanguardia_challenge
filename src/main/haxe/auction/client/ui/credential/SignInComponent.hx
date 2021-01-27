package auction.client.ui.credential;

@:build(haxe.ui.macros.ComponentMacros.build("src/main/ui/credential/sign_in.xml"))
class SignInComponent extends haxe.ui.containers.VBox{
  private var form : SignInForm;
  
  public function new(){
    super();
    this.form = new SignInForm(null,null);
  }
  @:bind(send,MouseEvent.CLICK)
  function on_send(e){
    this.dispatch(User_Request(User_SignIn(form)).lift());
  }
  @:bind(name,UIEvent.CHANGE)
  function on_name_change(e){
    this.form.name = name.text;
  }
  @:bind(pass,UIEvent.CHANGE)
  function on_pass_change(e){
    this.form.pass = pass.text;
  }
}