package node.fs;

@:jsRequire("fs", "ReadStream") extern class ReadStream extends node.stream.Readable {
	function new();
	function close():Void;
	var bytesRead : Float;
	var path : ts.AnyOf2<String, global.Buffer>;
	var pending : Bool;
	/**
		events.EventEmitter
		   1. open
		   2. close
		   3. ready
	**/
	@:overload(function(event:String, listener:(chunk:ts.AnyOf2<String, global.Buffer>) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ReadStream { })
	@:overload(function(event:String, listener:(fd:Float) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadStream { })
	function addListener(event:String, listener:() -> Void):ReadStream;
	@:overload(function(event:String, listener:(chunk:ts.AnyOf2<String, global.Buffer>) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ReadStream { })
	@:overload(function(event:String, listener:(fd:Float) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadStream { })
	function on(event:String, listener:() -> Void):ReadStream;
	@:overload(function(event:String, listener:(chunk:ts.AnyOf2<String, global.Buffer>) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ReadStream { })
	@:overload(function(event:String, listener:(fd:Float) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadStream { })
	function once(event:String, listener:() -> Void):ReadStream;
	@:overload(function(event:String, listener:(chunk:ts.AnyOf2<String, global.Buffer>) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ReadStream { })
	@:overload(function(event:String, listener:(fd:Float) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadStream { })
	function prependListener(event:String, listener:() -> Void):ReadStream;
	@:overload(function(event:String, listener:(chunk:ts.AnyOf2<String, global.Buffer>) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ReadStream { })
	@:overload(function(event:String, listener:(fd:Float) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadStream { })
	function prependOnceListener(event:String, listener:() -> Void):ReadStream;
	function setEncoding(encoding:global.BufferEncoding):ReadStream;
	function pause():ReadStream;
	function resume():ReadStream;
	function unpipe(?destination:global.nodejs.WritableStream):ReadStream;
	function wrap(oldStream:global.nodejs.ReadableStream):ReadStream;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadStream { })
	function removeListener(event:String, listener:() -> Void):ReadStream;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadStream;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):ReadStream;
	function setMaxListeners(n:Float):ReadStream;
	static var prototype : ReadStream;
}