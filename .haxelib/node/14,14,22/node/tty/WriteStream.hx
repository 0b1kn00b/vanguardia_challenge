package node.tty;

@:jsRequire("tty", "WriteStream") extern class WriteStream extends node.net.Socket {
	function new(fd:Float);
	/**
		events.EventEmitter
		   1. close
		   2. connect
		   3. data
		   4. drain
		   5. end
		   6. error
		   7. lookup
		   8. timeout
		
		events.EventEmitter
		   1. close
		   2. connect
		   3. data
		   4. drain
		   5. end
		   6. error
		   7. lookup
		   8. timeout
	**/
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
	@:overload(function(event:String):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
	/**
		Clears the current line of this WriteStream in a direction identified by `dir`.
	**/
	function clearLine(dir:Direction, ?callback:() -> Void):Bool;
	/**
		Clears this `WriteStream` from the current cursor down.
	**/
	function clearScreenDown(?callback:() -> Void):Bool;
	/**
		Moves this WriteStream's cursor to the specified position.
	**/
	@:overload(function(x:Float, callback:() -> Void):Bool { })
	function cursorTo(x:Float, ?y:Float, ?callback:() -> Void):Bool;
	/**
		Moves this WriteStream's cursor relative to its current position.
	**/
	function moveCursor(dx:Float, dy:Float, ?callback:() -> Void):Bool;
	function getColorDepth(?env:{ }):Float;
	@:overload(function(?env:{ }):Bool { })
	@:overload(function(depth:Float, ?env:{ }):Bool { })
	function hasColors(?depth:Float):Bool;
	function getWindowSize():ts.Tuple2<Float, Float>;
	var columns : Float;
	var rows : Float;
	var isTTY : Bool;
	@:overload(function(port:Float, host:String, ?connectionListener:() -> Void):WriteStream { })
	@:overload(function(port:Float, ?connectionListener:() -> Void):WriteStream { })
	@:overload(function(path:String, ?connectionListener:() -> Void):WriteStream { })
	function connect(options:node.net.SocketConnectOpts, ?connectionListener:() -> Void):WriteStream;
	function setEncoding(?encoding:global.BufferEncoding):WriteStream;
	function pause():WriteStream;
	function resume():WriteStream;
	function setTimeout(timeout:Float, ?callback:() -> Void):WriteStream;
	function setNoDelay(?noDelay:Bool):WriteStream;
	function setKeepAlive(?enable:Bool, ?initialDelay:Float):WriteStream;
	function unref():WriteStream;
	function ref():WriteStream;
	function setDefaultEncoding(encoding:global.BufferEncoding):WriteStream;
	function unpipe(?destination:global.nodejs.WritableStream):WriteStream;
	function wrap(oldStream:global.nodejs.ReadableStream):WriteStream;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream { })
	function removeListener(event:String, listener:() -> Void):WriteStream;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):WriteStream;
	function setMaxListeners(n:Float):WriteStream;
	static var prototype : WriteStream;
}