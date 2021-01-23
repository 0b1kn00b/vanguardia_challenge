package node.crypto;

@:jsRequire("crypto", "Hash") extern class Hash extends node.stream.Transform {
	private function new();
	function copy():Hash;
	@:overload(function(data:String, input_encoding:global.BufferEncoding):Hash { })
	function update(data:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>):Hash;
	@:overload(function(encoding:BinaryToTextEncoding):String { })
	function digest():global.Buffer;
	function setDefaultEncoding(encoding:global.BufferEncoding):Hash;
	function setEncoding(encoding:global.BufferEncoding):Hash;
	function pause():Hash;
	function resume():Hash;
	function unpipe(?destination:global.nodejs.WritableStream):Hash;
	function wrap(oldStream:global.nodejs.ReadableStream):Hash;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. error
		5. pause
		6. readable
		7. resume
	**/
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash { })
	function addListener(event:String, listener:() -> Void):Hash;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash { })
	function on(event:String, listener:() -> Void):Hash;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash { })
	function once(event:String, listener:() -> Void):Hash;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash { })
	function prependListener(event:String, listener:() -> Void):Hash;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash { })
	function prependOnceListener(event:String, listener:() -> Void):Hash;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:String, listener:() -> Void):Hash { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash { })
	function removeListener(event:String, listener:() -> Void):Hash;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Hash;
	function setMaxListeners(n:Float):Hash;
	static var prototype : Hash;
}