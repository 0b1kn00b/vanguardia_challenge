package auction.common.model.session;

class SessionSchema extends Clazz{
  static var counter = new Counter();

  public function mock_memory(){
    return new SessionMemoryModel();
  }
  public function create(user:UserId){
    return new SessionVO(counter.next(),haxe.Timer.stamp(),user);
  }
}