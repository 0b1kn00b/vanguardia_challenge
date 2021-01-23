package node.crypto;

@:jsRequire("crypto", "Hmac") extern class Hmac extends node.stream.Transform {
	private function new();
	@:overload(function(data:String, input_encoding:global.BufferEncoding):Hmac { })
	function update(data:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>):Hmac;
	@:overload(function(encoding:BinaryToTextEncoding):String { })
	function digest():global.Buffer;
	function setDefaultEncoding(encoding:global.BufferEncoding):Hmac;
	function setEncoding(encoding:global.BufferEncoding):Hmac;
	function pause():Hmac;
	function resume():Hmac;
	function unpipe(?destination:global.nodejs.WritableStream):Hmac;
	function wrap(oldStream:global.nodejs.ReadableStream):Hmac;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hmac { })
	function addListener(event:String, listener:() -> Void):Hmac;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hmac { })
	function on(event:String, listener:() -> Void):Hmac;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hmac { })
	function once(event:String, listener:() -> Void):Hmac;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hmac { })
	function prependListener(event:String, listener:() -> Void):Hmac;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hmac { })
	function prependOnceListener(event:String, listener:() -> Void):Hmac;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:String, listener:() -> Void):Hmac { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hmac { })
	function removeListener(event:String, listener:() -> Void):Hmac;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hmac;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Hmac;
	function setMaxListeners(n:Float):Hmac;
	static var prototype : Hmac;
}