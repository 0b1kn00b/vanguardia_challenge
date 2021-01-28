package auction.client.ws;

@:expose class RequestSchema{
  public function new(){
    this.user = new UserRequestSchema();
  }
  public final user : UserRequestSchema;
}
class UserRequestSchema extends Clazz{
  var mock : Array<SignInForm>;
  
  public function new(){
    this.mock : Array<SignInForm> = __.resource('users').data;
  }
  public function sign_in(form:SignInForm){
    return SignIn(form);
  }
  public var user_one(){
    return sign_in(this.mock[0]);
  }
}