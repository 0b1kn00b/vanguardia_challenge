package node.crypto;

typedef CipherCCM = {
	function setAAD(buffer:global.nodejs.ArrayBufferView, options:{ var plaintextLength : Float; }):CipherCCM;
	function getAuthTag():global.Buffer;
	@:overload(function(data:String, input_encoding:global.BufferEncoding):global.Buffer { })
	@:overload(function(data:global.nodejs.ArrayBufferView, input_encoding:Null<Any>, output_encoding:BinaryToTextEncoding):String { })
	@:overload(function(data:String, input_encoding:Null<global.BufferEncoding>, output_encoding:BinaryToTextEncoding):String { })
	function update(data:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>):global.Buffer;
	@:native("final")
	@:overload(function(output_encoding:global.BufferEncoding):String { })
	function final_():global.Buffer;
	function setAutoPadding(?auto_padding:Bool):CipherCCM;
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
	function setDefaultEncoding(encoding:global.BufferEncoding):CipherCCM;
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
	function setEncoding(encoding:global.BufferEncoding):CipherCCM;
	function pause():CipherCCM;
	function resume():CipherCCM;
	function isPaused():Bool;
	function unpipe(?destination:global.nodejs.WritableStream):CipherCCM;
	function unshift(chunk:Dynamic, ?encoding:global.BufferEncoding):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):CipherCCM;
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
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):CipherCCM { })
	function addListener(event:String, listener:() -> Void):CipherCCM;
	@:overload(function(event:String, chunk:Dynamic):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool { })
	function emit(event:String):Bool;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):CipherCCM { })
	function on(event:String, listener:() -> Void):CipherCCM;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):CipherCCM { })
	function once(event:String, listener:() -> Void):CipherCCM;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):CipherCCM { })
	function prependListener(event:String, listener:() -> Void):CipherCCM;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):CipherCCM { })
	function prependOnceListener(event:String, listener:() -> Void):CipherCCM;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:String, listener:() -> Void):CipherCCM { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):CipherCCM { })
	function removeListener(event:String, listener:() -> Void):CipherCCM;
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):CipherCCM;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):CipherCCM;
	function setMaxListeners(n:Float):CipherCCM;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function listenerCount(event:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
};