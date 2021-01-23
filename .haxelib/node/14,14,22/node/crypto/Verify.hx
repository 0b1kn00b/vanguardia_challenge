package node.crypto;

@:jsRequire("crypto", "Verify") extern class Verify extends node.stream.Writable {
	private function new();
	@:overload(function(data:String, input_encoding:global.BufferEncoding):Verify { })
	function update(data:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>):Verify;
	@:overload(function(object:ts.AnyOf5<String, global.Buffer, KeyObject, VerifyKeyObjectInput, VerifyPublicKeyInput>, signature:String, ?signature_format:BinaryToTextEncoding):Bool { })
	function verify(object:ts.AnyOf5<String, global.Buffer, KeyObject, VerifyKeyObjectInput, VerifyPublicKeyInput>, signature:global.nodejs.ArrayBufferView):Bool;
	function setDefaultEncoding(encoding:global.BufferEncoding):Verify;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. drain
		3. error
		4. finish
		5. pipe
		6. unpipe
	**/
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Verify { })
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Verify { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Verify { })
	function addListener(event:String, listener:() -> Void):Verify;
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Verify { })
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Verify { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Verify { })
	function on(event:String, listener:() -> Void):Verify;
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Verify { })
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Verify { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Verify { })
	function once(event:String, listener:() -> Void):Verify;
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Verify { })
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Verify { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Verify { })
	function prependListener(event:String, listener:() -> Void):Verify;
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Verify { })
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Verify { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Verify { })
	function prependOnceListener(event:String, listener:() -> Void):Verify;
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Verify { })
	@:overload(function(event:String, listener:() -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Verify { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Verify { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Verify { })
	function removeListener(event:String, listener:() -> Void):Verify;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Verify;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Verify;
	function setMaxListeners(n:Float):Verify;
	static var prototype : Verify;
}