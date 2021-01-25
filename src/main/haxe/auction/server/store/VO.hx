package auction.server.store;

abstract class VO<K>{
  public var uid(get,null) 		: K;
  abstract public function get_uid():K;
}
