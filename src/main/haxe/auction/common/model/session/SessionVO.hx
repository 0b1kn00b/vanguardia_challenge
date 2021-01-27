package auction.common.model.session;

@:structInit class SessionVO extends UniqueKey<SessionId>{
  private static var counter = new Counter();

  public function get_uid():SessionId{
    return this.id;
  }
  public var user             : UserId;
  public var start_time       : Float;

  
  public function new(id:SessionId,start_time:Float,user:UserId){
    
    this.id           = id.toInt();
    this.start_time   = start_time;
    this.user         = user.toInt();
  }
}