package node.dns;

@:jsRequire("dns", "promises") @valueModuleOnly extern class Promises {
	static function getServers():Array<String>;
	@:overload(function(hostname:String, options:LookupOneOptions):js.lib.Promise<LookupAddress> { })
	@:overload(function(hostname:String, options:LookupAllOptions):js.lib.Promise<Array<LookupAddress>> { })
	@:overload(function(hostname:String, options:LookupOptions):js.lib.Promise<ts.AnyOf2<LookupAddress, Array<LookupAddress>>> { })
	@:overload(function(hostname:String):js.lib.Promise<LookupAddress> { })
	static function lookup(hostname:String, family:Float):js.lib.Promise<LookupAddress>;
	static function lookupService(address:String, port:Float):js.lib.Promise<{
		var hostname : String;
		var service : String;
	}>;
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<String>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<String>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<AnyRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<String>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<MxRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<NaptrRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<String>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<String>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<SoaRecord> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<SrvRecord>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<Array<Array<String>>> { })
	@:overload(function(hostname:String, rrtype:String):js.lib.Promise<ts.AnyOf7<Array<String>, SoaRecord, Array<AnyRecord>, Array<MxRecord>, Array<NaptrRecord>, Array<SrvRecord>, Array<Array<String>>>> { })
	static function resolve(hostname:String):js.lib.Promise<Array<String>>;
	@:overload(function(hostname:String, options:ResolveWithTtlOptions):js.lib.Promise<Array<RecordWithTtl>> { })
	@:overload(function(hostname:String, options:ResolveOptions):js.lib.Promise<ts.AnyOf2<Array<String>, Array<RecordWithTtl>>> { })
	static function resolve4(hostname:String):js.lib.Promise<Array<String>>;
	@:overload(function(hostname:String, options:ResolveWithTtlOptions):js.lib.Promise<Array<RecordWithTtl>> { })
	@:overload(function(hostname:String, options:ResolveOptions):js.lib.Promise<ts.AnyOf2<Array<String>, Array<RecordWithTtl>>> { })
	static function resolve6(hostname:String):js.lib.Promise<Array<String>>;
	static function resolveAny(hostname:String):js.lib.Promise<Array<AnyRecord>>;
	static function resolveCname(hostname:String):js.lib.Promise<Array<String>>;
	static function resolveMx(hostname:String):js.lib.Promise<Array<MxRecord>>;
	static function resolveNaptr(hostname:String):js.lib.Promise<Array<NaptrRecord>>;
	static function resolveNs(hostname:String):js.lib.Promise<Array<String>>;
	static function resolvePtr(hostname:String):js.lib.Promise<Array<String>>;
	static function resolveSoa(hostname:String):js.lib.Promise<SoaRecord>;
	static function resolveSrv(hostname:String):js.lib.Promise<Array<SrvRecord>>;
	static function resolveTxt(hostname:String):js.lib.Promise<Array<Array<String>>>;
	static function reverse(ip:String):js.lib.Promise<Array<String>>;
	static function setServers(servers:haxe.ds.ReadOnlyArray<String>):Void;
}