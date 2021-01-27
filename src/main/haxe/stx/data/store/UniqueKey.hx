package stx.data.store;

abstract class UniqueKey<K>{
  public var uid(get,null) 		: K;
  abstract public function get_uid():K;
}
