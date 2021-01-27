package auction.client.request;

enum UserRequest{
  User_SignIn(signin:SignInForm);
  User_SignInConfirmed(session_id:SessionId);
}
