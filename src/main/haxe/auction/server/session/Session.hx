package auction.server.session;

@:structInit class Session extends VO<SessionId>{
  private static var counter = new Counter();

  public var id               : Int;
  public function get_uid():SessionId{
    return this.id;
  }
  public var user             : UserId;
  public var start_time       : Float;

  static public function pure(id:UserId){
    return new Session(counter.next(),haxe.Timer.stamp(),id);
  }
  public function new(id:SessionId,start_time:Float,user:UserId){
    this.id           = id.toInt();
    this.start_time   = start_time;
    this.user         = user.toInt();
  }
}