package auction.client;

class Lift{
  static public function lift(request:RequestSum):ClientEvent{
    return ClientEvent.fromRequest(request);
  }
}