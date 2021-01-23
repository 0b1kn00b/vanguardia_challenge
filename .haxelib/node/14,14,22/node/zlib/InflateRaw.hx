package node.zlib;

typedef InflateRaw = {
	function _transform(chunk:Dynamic, encoding:global.BufferEncoding, callback:node.stream.TransformCallback):Void;
	function _flush(callback:node.stream.TransformCallback):Void;
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
	@:overload(function(chunk:Dynamic, ?cb:(error:Null<js.lib.Error>) -> Void):Bool { })
	function write(chunk:Dynamic, ?encoding:global.BufferEncoding, ?cb:(error:Null<js.lib.Error>) -> Void):Bool;
	function setDefaultEncoding(encoding:global.BufferEncoding):InflateRaw;
	@:overload(function(chunk:Dynamic, ?cb:() -> Void):Void { })
	@:overload(function(chunk:Dynamic, ?encoding:global.BufferEncoding, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
	function cork():Void;
	function uncork():Void;
	var readable : Bool;
	final readableEncoding : Null<global.BufferEncoding>;
	final readableEnded : Bool;
	final readableFlowing : Null<Bool>;
	final readableHighWaterMark : Float;
	final readableLength : Float;
	final readableObjectMode : Bool;
	var destroyed : Bool;
	function _read(size:Float):Void;
	function read(?size:Float):Dynamic;
	function setEncoding(encoding:global.BufferEncoding):InflateRaw;
	function pause():InflateRaw;
	function resume():InflateRaw;
	function isPaused():Bool;
	function unpipe(?destination:global.nodejs.WritableStream):InflateRaw;
	function unshift(chunk:Dynamic, ?encoding:global.BufferEncoding):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):InflateRaw;
	function push(chunk:Dynamic, ?encoding:global.BufferEncoding):Bool;
	function destroy(?error:js.lib.Error):Void;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):InflateRaw { })
	function addListener(event:String, listener:() -> Void):InflateRaw;
	@:overload(function(event:String, chunk:Dynamic):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool { })
	function emit(event:String):Bool;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):InflateRaw { })
	function on(event:String, listener:() -> Void):InflateRaw;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):InflateRaw { })
	function once(event:String, listener:() -> Void):InflateRaw;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):InflateRaw { })
	function prependListener(event:String, listener:() -> Void):InflateRaw;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):InflateRaw { })
	function prependOnceListener(event:String, listener:() -> Void):InflateRaw;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:String, listener:() -> Void):InflateRaw { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):InflateRaw { })
	function removeListener(event:String, listener:() -> Void):InflateRaw;
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):InflateRaw;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):InflateRaw;
	function setMaxListeners(n:Float):InflateRaw;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function listenerCount(event:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	final bytesRead : Float;
	final bytesWritten : Float;
	@:optional
	var shell : ts.AnyOf2<String, Bool>;
	function close(?callback:() -> Void):Void;
	@:overload(function(?callback:() -> Void):Void { })
	function flush(?kind:Float, ?callback:() -> Void):Void;
	function reset():Void;
};