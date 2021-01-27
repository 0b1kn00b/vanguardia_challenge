package auction.server.test;

class UserTest extends Test{
  public function test(){
    var session_model = new SessionSchema().mock_memory();

    var user_model    = new UserSchema().pull(session_model).fudge().fudge();

    var result        = user_model.sign_in(({name : "User1", pass : "IAmUserOne"}:SignInForm)).fudge().fudge();
      isTrue(result);
    var result        = user_model.sign_in(({name : "User1", pass : "fnart"}:SignInForm)).fudge().fudge();
      isFalse(result);

    equals(1,untyped session_model.data.length);
  }
}