package stx.fail;

enum AuctionFailure{
  AuctionFailed(str:String);
  AuctionEnded;
  NoSuchAuction;
}