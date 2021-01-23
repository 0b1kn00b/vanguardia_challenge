package node.dns;

@:jsRequire("dns", "resolveNaptr") @valueModuleOnly extern class ResolveNaptr {
	@:selfCall
	static function call(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<NaptrRecord>) -> Void):Void;
}