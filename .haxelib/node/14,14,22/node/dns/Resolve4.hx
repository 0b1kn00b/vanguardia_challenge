package node.dns;

@:jsRequire("dns", "resolve4") @valueModuleOnly extern class Resolve4 {
	@:overload(function(hostname:String, options:ResolveWithTtlOptions, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<RecordWithTtl>) -> Void):Void { })
	@:overload(function(hostname:String, options:ResolveOptions, callback:(err:Null<global.nodejs.ErrnoException>, addresses:ts.AnyOf2<Array<String>, Array<RecordWithTtl>>) -> Void):Void { })
	@:selfCall
	static function call(hostname:String, callback:(err:Null<global.nodejs.ErrnoException>, addresses:Array<String>) -> Void):Void;
}