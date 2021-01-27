package auction.common.model.user;

interface UserModelApi extends StoreApi<UserVO>{
  public function sign_in(credentials : SignInForm):Pledge<Bool,AuctionFailure>;
}