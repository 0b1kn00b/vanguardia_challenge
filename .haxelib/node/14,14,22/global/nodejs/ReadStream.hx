package global.nodejs;

typedef ReadStream = {
	var isRaw : Bool;
	function setRawMode(mode:Bool):ReadStream;
	var isTTY : Bool;
	@:overload(function(str:ts.AnyOf2<String, js.lib.Uint8Array>, ?encoding:global.BufferEncoding, ?cb:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Bool { })
	function write(buffer:ts.AnyOf2<String, js.lib.Uint8Array>, ?cb:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Bool;
	@:overload(function(port:Float, host:String, ?connectionListener:() -> Void):ReadStream { })
	@:overload(function(port:Float, ?connectionListener:() -> Void):ReadStream { })
	@:overload(function(path:String, ?connectionListener:() -> Void):ReadStream { })
	function connect(options:node.net.SocketConnectOpts, ?connectionListener:() -> Void):ReadStream;
	function setEncoding(?encoding:global.BufferEncoding):ReadStream;
	function pause():ReadStream;
	function resume():ReadStream;
	function setTimeout(timeout:Float, ?callback:() -> Void):ReadStream;
	function setNoDelay(?noDelay:Bool):ReadStream;
	function setKeepAlive(?enable:Bool, ?initialDelay:Float):ReadStream;
	function address():ts.AnyOf2<{ }, node.net.AddressInfo>;
	function unref():ReadStream;
	function ref():ReadStream;
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
	**/
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(data:global.Buffer) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error, address:String, family:ts.AnyOf2<String, Float>, host:String) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadStream;
	@:overload(function(event:String, had_error:Bool):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, data:global.Buffer):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String, err:js.lib.Error, address:String, family:ts.AnyOf2<String, Float>, host:String):Bool { })
	@:overload(function(event:String):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(data:global.Buffer) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error, address:String, family:ts.AnyOf2<String, Float>, host:String) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadStream;
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(data:global.Buffer) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error, address:String, family:ts.AnyOf2<String, Float>, host:String) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadStream;
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(data:global.Buffer) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error, address:String, family:ts.AnyOf2<String, Float>, host:String) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadStream;
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(data:global.Buffer) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error, address:String, family:ts.AnyOf2<String, Float>, host:String) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadStream;
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
	function setDefaultEncoding(encoding:global.BufferEncoding):ReadStream;
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
	function unpipe(?destination:WritableStream):ReadStream;
	function unshift(chunk:Dynamic, ?encoding:global.BufferEncoding):Void;
	function wrap(oldStream:ReadableStream):ReadStream;
	function push(chunk:Dynamic, ?encoding:global.BufferEncoding):Bool;
	function destroy(?error:js.lib.Error):Void;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadStream { })
	function removeListener(event:String, listener:() -> Void):ReadStream;
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadStream;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):ReadStream;
	function setMaxListeners(n:Float):ReadStream;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function listenerCount(event:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
};