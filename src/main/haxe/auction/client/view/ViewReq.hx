package auction.client.view;

enum ViewReq<T,R>{
  View_Req_Next(v:T);
  View_Req_Done(r:R);
}