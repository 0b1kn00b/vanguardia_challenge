package auction.server.user;

class UserSchema extends Clazz{
  public function make(name,pass,id,role,bids,sessions):User{
    return new User(name,pass,id,role,bids,sessions);
  }
  public function mock(){
    var users                   = [];
    var input : Array<Dynamic>  = haxe.Json.parse(__.resource("users").string()).data;
    for(x in input){
      var data : User = {
        name      : x.name,
        pass      : x.pass,
        bids      : [],
        sessions  : [],
        role      : x.role,
        id        : x.id
      }
      users.push(data);
    }
    return users;
  }
  public function pull(session:SessionModelApi):Pledge<UserModelApi,AuctionFailure>{
    var users                     = this.mock();
    var collection : UserModelApi = new UserMockMemoryModel(session);

    return Pledge.bind_fold(
      users,
      (next,memo) -> {
        return collection.insert(next).map(_ -> collection);
      },
      collection
    );
  }
}