package auction.server.pack;

@:structInit class User extends Clazz{
  public var email  : String;
	public var name	  : String;
	
  public var bids 	: Array<Int>;


  public var id(default,null)		: UserId;
}