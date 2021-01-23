package node.fs;

@:jsRequire("fs", "WriteStream") extern class WriteStream extends node.stream.Writable {
	function new();
	function close():Void;
	var bytesWritten : Float;
	var path : ts.AnyOf2<String, global.Buffer>;
	var pending : Bool;
	/**
		events.EventEmitter
		   1. open
		   2. close
		   3. ready
	**/
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(fd:Float) -> Void):WriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):WriteStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream { })
	function addListener(event:String, listener:() -> Void):WriteStream;
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(fd:Float) -> Void):WriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):WriteStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream { })
	function on(event:String, listener:() -> Void):WriteStream;
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(fd:Float) -> Void):WriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):WriteStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream { })
	function once(event:String, listener:() -> Void):WriteStream;
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(fd:Float) -> Void):WriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):WriteStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream { })
	function prependListener(event:String, listener:() -> Void):WriteStream;
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(fd:Float) -> Void):WriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):WriteStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream { })
	function prependOnceListener(event:String, listener:() -> Void):WriteStream;
	function setDefaultEncoding(encoding:global.BufferEncoding):WriteStream;
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):WriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):WriteStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream { })
	function removeListener(event:String, listener:() -> Void):WriteStream;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):WriteStream;
	function setMaxListeners(n:Float):WriteStream;
	static var prototype : WriteStream;
}