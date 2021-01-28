package auction.client;

typedef ProtocolInClientSchema          = auction.client.protocol.ProtocolInClientSchema;
typedef NavigationProtocol              = auction.client.protocol.NavigationProtocol;

@:using(auction.client.ProtocolInClient.ProtocolInClientLift)
enum ProtocolInClientSum{
  AppFail(e:Err<AuctionFailure>);
  
  SigExit(?e:Err<AuctionFailure>);

  User_Protocol(req:UserProtocol);
  Navigation_Protocol(req:NavigationProtocol);
}
abstract ProtocolInClient(ProtocolInClientSum) from ProtocolInClientSum to ProtocolInClientSum{
  static public var _(default,never) = ProtocolInClientLift;
}
class ProtocolInClientLift{
  
}
class ProtocolInClientSSumLift{
  
}
