package auction.client;

class ClientEventCls extends haxe.ui.events.UIEvent{
  public function new(data:ProtocolInClient){
    super('request',true,__.embed().pack(data));
  }
}
abstract ClientEvent(ClientEventCls) from ClientEventCls to ClientEventCls{
  @:from static public function fromRequest(request:ProtocolInClient):ClientEvent{
    return new ClientEventCls(request);
  }
}