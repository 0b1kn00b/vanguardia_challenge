package node.crypto;

@:jsRequire("crypto", "Signer") extern class Signer extends node.stream.Writable {
	private function new();
	@:overload(function(data:String, input_encoding:global.BufferEncoding):Signer { })
	function update(data:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>):Signer;
	@:overload(function(private_key:ts.AnyOf5<String, global.Buffer, KeyObject, SignKeyObjectInput, SignPrivateKeyInput>, output_format:BinaryToTextEncoding):String { })
	function sign(private_key:ts.AnyOf5<String, global.Buffer, KeyObject, SignKeyObjectInput, SignPrivateKeyInput>):global.Buffer;
	function setDefaultEncoding(encoding:global.BufferEncoding):Signer;
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
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Signer { })
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Signer { })
	function addListener(event:String, listener:() -> Void):Signer;
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Signer { })
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Signer { })
	function on(event:String, listener:() -> Void):Signer;
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Signer { })
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Signer { })
	function once(event:String, listener:() -> Void):Signer;
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Signer { })
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Signer { })
	function prependListener(event:String, listener:() -> Void):Signer;
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Signer { })
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Signer { })
	function prependOnceListener(event:String, listener:() -> Void):Signer;
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Signer { })
	@:overload(function(event:String, listener:() -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):Signer { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Signer { })
	function removeListener(event:String, listener:() -> Void):Signer;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Signer;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Signer;
	function setMaxListeners(n:Float):Signer;
	static var prototype : Signer;
}