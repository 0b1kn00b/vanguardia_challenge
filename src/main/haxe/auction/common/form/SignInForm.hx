package auction.common.form;
@:structInit class SignInForm{
  public function new(name,pass){
    this.name = name;
    this.pass = pass;
  }
  public var name : String;
  public var pass : String;
}