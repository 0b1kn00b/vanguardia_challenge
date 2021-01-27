package stx.fail;

enum AuctionFailure{
  E_AuctionFailed(str:String);
  E_AuctionEnded;
  E_NoSuchAuction;
  E_LostRequest;
  E_Golgi_Error(error:golgi.Error);
  
}