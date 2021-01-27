package auction.client;

typedef RequestCtr            = auction.client.request.RequestCtr;
typedef UserRequest           = auction.client.request.UserRequest;
typedef NavigationRequest     = auction.client.request.NavigationRequest;

@:using(auction.client.Request.RequestSumLift)
enum RequestSum{
  AppFail(e:Err<AuctionFailure>);
  
  SigExit(?e:Err<AuctionFailure>);

  User_Request(req:UserRequest);
  Navigation_Request(req:NavigationRequest);
}
abstract Request(RequestSum) from RequestSum to RequestSum{
  static public var _(default,never) = RequestLift;
}
class RequestLift{
  
}
class RequestSumLift{
  
}
