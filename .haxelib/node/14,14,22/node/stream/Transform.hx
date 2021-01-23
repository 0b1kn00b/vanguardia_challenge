package node.stream;

@:jsRequire("stream", "Transform") extern class Transform extends Duplex {
	function new(?opts:TransformOptions);
	function _transform(chunk:Dynamic, encoding:global.BufferEncoding, callback:TransformCallback):Void;
	function _flush(callback:TransformCallback):Void;
	function setDefaultEncoding(encoding:global.BufferEncoding):Transform;
	function setEncoding(encoding:global.BufferEncoding):Transform;
	function pause():Transform;
	function resume():Transform;
	function unpipe(?destination:global.nodejs.WritableStream):Transform;
	function wrap(oldStream:global.nodejs.ReadableStream):Transform;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Transform { })
	function addListener(event:String, listener:() -> Void):Transform;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Transform { })
	function on(event:String, listener:() -> Void):Transform;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Transform { })
	function once(event:String, listener:() -> Void):Transform;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Transform { })
	function prependListener(event:String, listener:() -> Void):Transform;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Transform { })
	function prependOnceListener(event:String, listener:() -> Void):Transform;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Transform { })
	function removeListener(event:String, listener:() -> Void):Transform;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Transform;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Transform;
	function setMaxListeners(n:Float):Transform;
	static var prototype : Transform;
}