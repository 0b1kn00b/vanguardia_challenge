package auction.server.session;

class SessionSchema extends Clazz{
  static var counter = new Counter();

  public function mock_memory(){
    return new SessionMemoryModel();
  }
  public function create(user:UserId){
    return new Session(counter.next(),haxe.Timer.stamp(),user);
  }
}