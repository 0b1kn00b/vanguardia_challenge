package auction.client.ws;

@:expose class RequestSchema{
  public function new(){
    this.user = new UserRequestSchema();
  }
  public final user : UserRequestSchema;
}
class UserRequestSchema extends Clazz{
  public function sign_in(form:SignInForm){
    return SignIn(form);
  }
}