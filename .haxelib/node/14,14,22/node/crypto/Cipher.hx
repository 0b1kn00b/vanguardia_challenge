package node.crypto;

@:jsRequire("crypto", "Cipher") extern class Cipher extends node.stream.Transform {
	private function new();
	@:overload(function(data:String, input_encoding:global.BufferEncoding):global.Buffer { })
	@:overload(function(data:global.nodejs.ArrayBufferView, input_encoding:Null<Any>, output_encoding:BinaryToTextEncoding):String { })
	@:overload(function(data:String, input_encoding:Null<global.BufferEncoding>, output_encoding:BinaryToTextEncoding):String { })
	function update(data:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>):global.Buffer;
	@:native("final")
	@:overload(function(output_encoding:global.BufferEncoding):String { })
	function final_():global.Buffer;
	function setAutoPadding(?auto_padding:Bool):Cipher;
	function setDefaultEncoding(encoding:global.BufferEncoding):Cipher;
	function setEncoding(encoding:global.BufferEncoding):Cipher;
	function pause():Cipher;
	function resume():Cipher;
	function unpipe(?destination:global.nodejs.WritableStream):Cipher;
	function wrap(oldStream:global.nodejs.ReadableStream):Cipher;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cipher { })
	function addListener(event:String, listener:() -> Void):Cipher;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cipher { })
	function on(event:String, listener:() -> Void):Cipher;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cipher { })
	function once(event:String, listener:() -> Void):Cipher;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cipher { })
	function prependListener(event:String, listener:() -> Void):Cipher;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cipher { })
	function prependOnceListener(event:String, listener:() -> Void):Cipher;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:String, listener:() -> Void):Cipher { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cipher { })
	function removeListener(event:String, listener:() -> Void):Cipher;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cipher;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Cipher;
	function setMaxListeners(n:Float):Cipher;
	static var prototype : Cipher;
}