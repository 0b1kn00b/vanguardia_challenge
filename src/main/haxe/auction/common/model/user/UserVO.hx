package auction.common.model.user;

@:structInit class UserVO extends UniqueKey<UserId>{
  public function new(name,pass,id,role,bids,sessions){
    this.name       = name;
    this.pass       = pass;
    this.role       = role;
    this.id         = id;
    this.bids       = __.option(bids).defv([]);
    this.sessions   = __.option(sessions).defv([]);
  }
  public function clone(){
    return new Cloner().clone(this);
  }
	public var name	    : String;
  public var pass     : String;
  public var bids 	  : Array<BidId>;
  public var sessions : Array<SessionId>;
  
  public var role     : Role;

  public function get_uid(): UserId{
    return this.id;
  }
}