package auction.client;

class Magic{
  @:isVar private static var data(get,null) : Embed<Request>;
  static private function get_data():Embed<Request>{
    return data == null ? data = new Embed() : data;
  }
  public static function embed(wildcard:Wildcard):Embed<Request>{
    return data;
  }
}