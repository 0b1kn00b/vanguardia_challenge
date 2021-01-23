package node.crypto;

@:jsRequire("crypto", "Decipher") extern class Decipher extends node.stream.Transform {
	private function new();
	@:overload(function(data:String, input_encoding:BinaryToTextEncoding):global.Buffer { })
	@:overload(function(data:global.nodejs.ArrayBufferView, input_encoding:Null<Any>, output_encoding:global.BufferEncoding):String { })
	@:overload(function(data:String, input_encoding:Null<BinaryToTextEncoding>, output_encoding:global.BufferEncoding):String { })
	function update(data:global.nodejs.ArrayBufferView):global.Buffer;
	@:native("final")
	@:overload(function(output_encoding:global.BufferEncoding):String { })
	function final_():global.Buffer;
	function setAutoPadding(?auto_padding:Bool):Decipher;
	function setDefaultEncoding(encoding:global.BufferEncoding):Decipher;
	function setEncoding(encoding:global.BufferEncoding):Decipher;
	function pause():Decipher;
	function resume():Decipher;
	function unpipe(?destination:global.nodejs.WritableStream):Decipher;
	function wrap(oldStream:global.nodejs.ReadableStream):Decipher;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Decipher { })
	function addListener(event:String, listener:() -> Void):Decipher;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Decipher { })
	function on(event:String, listener:() -> Void):Decipher;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Decipher { })
	function once(event:String, listener:() -> Void):Decipher;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Decipher { })
	function prependListener(event:String, listener:() -> Void):Decipher;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Decipher { })
	function prependOnceListener(event:String, listener:() -> Void):Decipher;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:String, listener:() -> Void):Decipher { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Decipher { })
	function removeListener(event:String, listener:() -> Void):Decipher;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Decipher;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Decipher;
	function setMaxListeners(n:Float):Decipher;
	static var prototype : Decipher;
}