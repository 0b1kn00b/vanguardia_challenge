package global.nodejs;

typedef WriteStream = {
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
	function clearLine(dir:node.tty.Direction, ?callback:() -> Void):Bool;
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
	@:overload(function(str:ts.AnyOf2<String, js.lib.Uint8Array>, ?encoding:global.BufferEncoding, ?cb:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Bool { })
	function write(buffer:ts.AnyOf2<String, js.lib.Uint8Array>, ?cb:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Bool;
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
	function address():ts.AnyOf2<{ }, node.net.AddressInfo>;
	function unref():WriteStream;
	function ref():WriteStream;
	final bufferSize : Float;
	final bytesRead : Float;
	final bytesWritten : Float;
	final connecting : Bool;
	final destroyed : Bool;
	final localAddress : String;
	final localPort : Float;
	@:optional
	final remoteAddress : String;
	@:optional
	final remoteFamily : String;
	@:optional
	final remotePort : Float;
	@:overload(function(buffer:ts.AnyOf2<String, js.lib.Uint8Array>, ?cb:() -> Void):Void { })
	@:overload(function(str:ts.AnyOf2<String, js.lib.Uint8Array>, ?encoding:global.BufferEncoding, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
	final writable : Bool;
	final writableEnded : Bool;
	final writableFinished : Bool;
	final writableHighWaterMark : Float;
	final writableLength : Float;
	final writableObjectMode : Bool;
	final writableCorked : Float;
	function _write(chunk:Dynamic, encoding:global.BufferEncoding, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	function _writev(chunks:Array<{ var chunk : Dynamic; var encoding : global.BufferEncoding; }>, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	function _destroy(error:Null<js.lib.Error>, callback:(error:Null<js.lib.Error>) -> Void):Void;
	function _final(callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	function setDefaultEncoding(encoding:global.BufferEncoding):WriteStream;
	function cork():Void;
	function uncork():Void;
	var readable : Bool;
	final readableEncoding : Null<global.BufferEncoding>;
	final readableEnded : Bool;
	final readableFlowing : Null<Bool>;
	final readableHighWaterMark : Float;
	final readableLength : Float;
	final readableObjectMode : Bool;
	function _read(size:Float):Void;
	function read(?size:Float):Dynamic;
	function isPaused():Bool;
	function unpipe(?destination:WritableStream):WriteStream;
	function unshift(chunk:Dynamic, ?encoding:global.BufferEncoding):Void;
	function wrap(oldStream:ReadableStream):WriteStream;
	function push(chunk:Dynamic, ?encoding:global.BufferEncoding):Bool;
	function destroy(?error:js.lib.Error):Void;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream { })
	function removeListener(event:String, listener:() -> Void):WriteStream;
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):WriteStream;
	function setMaxListeners(n:Float):WriteStream;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function listenerCount(event:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
};