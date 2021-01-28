package auction.client;

class Lift{
  static public function lift(request:auction.client.ProtocolInClient.ProtocolInClientSum):ClientEvent{
    return ClientEvent.fromRequest(request);
  }
}