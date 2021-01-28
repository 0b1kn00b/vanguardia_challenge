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
    super();
    this.mock = haxe.Json.parse(__.resource('users').string()).data;
  }
  public function sign_in(form:SignInForm){
    return P_OutgoingClientRequest(OCR_User(SignIn(form)));
  }
  public function user_one(){
    return sign_in(this.mock[0]);
  }
}