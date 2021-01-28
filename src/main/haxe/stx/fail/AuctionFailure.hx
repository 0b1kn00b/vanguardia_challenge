package stx.fail;

enum AuctionFailure{
  E_UnImplemented;
  E_Exit;
  E_AuctionFailed(str:String);
  E_AuctionEnded;
  E_NoSuchAuction;
  E_LostRequest;
  E_LocationNotFound;
  E_Bubble(f:Err<AuctionFailure>);
  E_Golgi_Error(error:golgi.Error);
  E_RouteNotFound(route:Array<String>);
  E_EmptyWsRequest;
}