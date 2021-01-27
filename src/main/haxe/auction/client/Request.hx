package auction.client;

typedef RequestCtr      = auction.client.request.RequestCtr;
typedef UserRequest     = auction.client.request.UserRequest;

@:using(auction.client.Request.RequestSumLift)
enum RequestSum{
  UserReq(req:UserRequest);
}
abstract Request(RequestSum) from RequestSum to RequestSum{
  static public var _(default,never) = RequestLift;
}
class RequestLift{
  
}
class RequestSumLift{
  
}
