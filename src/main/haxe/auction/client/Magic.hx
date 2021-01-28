package auction.client;

class Magic{
  @:isVar private static var data(get,null) : Embed<ProtocolInClient>;
  static private function get_data():Embed<ProtocolInClient>{
    return data == null ? data = new Embed() : data;
  }
  public static function embed(wildcard:Wildcard):Embed<ProtocolInClient>{
    return data;
  }
}