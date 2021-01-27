package auction.client;

class Lift{
  static public function lift(request:auction.client.Request.RequestSum):ClientEvent{
    return ClientEvent.fromRequest(request);
  }
}