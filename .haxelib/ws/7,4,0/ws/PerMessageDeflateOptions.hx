package ws;

typedef PerMessageDeflateOptions = {
	@:optional
	var serverNoContextTakeover : Bool;
	@:optional
	var clientNoContextTakeover : Bool;
	@:optional
	var serverMaxWindowBits : Float;
	@:optional
	var clientMaxWindowBits : Float;
	@:optional
	var zlibDeflateOptions : {
		@:optional
		var flush : Float;
		@:optional
		var finishFlush : Float;
		@:optional
		var chunkSize : Float;
		@:optional
		var windowBits : Float;
		@:optional
		var level : Float;
		@:optional
		var memLevel : Float;
		@:optional
		var strategy : Float;
		@:optional
		var dictionary : ts.AnyOf3<global.Buffer, Array<global.Buffer>, js.lib.DataView>;
		@:optional
		var info : Bool;
	};
	@:optional
	var zlibInflateOptions : node.zlib.ZlibOptions;
	@:optional
	var threshold : Float;
	@:optional
	var concurrencyLimit : Float;
};