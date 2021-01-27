package auction.common.model.user;

interface UserModelApi extends StoreApi<UserVO>{
  public function sign_in(credentials : { name : String, pass : String }):Pledge<Bool,AuctionFailure>;
}