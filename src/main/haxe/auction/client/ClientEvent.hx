package auction.client;

class ClientEventCls extends haxe.ui.events.UIEvent{
  public function new(data:Request){
    super('request',true,__.embed().pack(data));
  }
}
abstract ClientEvent(ClientEventCls) from ClientEventCls to ClientEventCls{
  @:from static public function fromRequest(request:Request):ClientEvent{
    return new ClientEventCls(request);
  }
}