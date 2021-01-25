package auction.server.user;

class UserMockMemoryModel extends MemoryStore<User> implements UserModelApi{
  var session : SessionModelApi;
  
  public function new(session){
    super();
    this.session = session;
  }
  //yes I know this should be salty.
  public function sign_in(credentials : { name : String, pass : String }):Pledge<Bool,AuctionFailure>{
    var user = this.data.search(
      (user:User) -> user.name == credentials.name
    );
    var pass = user.fold(
      (ok)  -> ok.pass == credentials.pass,
      ()    -> false
    );
    return pass.if_else(
      () -> {
        var u         = user.fudge();
        var s         = Session.pure(u.uid);
        return session.insert(s).flat_map(
          (_) -> {
            var next = u.clone();
                next.sessions.push(s.uid);
            return this.update(u).map(_ -> true);
          }
        );
      },
      () -> Pledge.accept(false)
    );
  }
}