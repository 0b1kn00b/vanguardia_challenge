package auction.server.user;

interface UserModelApi extends StoreApi<User>{
  public function sign_in(credentials : { name : String, pass : String }):Pledge<Bool,AuctionFailure>;
}