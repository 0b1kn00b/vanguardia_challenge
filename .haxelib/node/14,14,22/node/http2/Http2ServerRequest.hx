package node.http2;

@:jsRequire("http2", "Http2ServerRequest") extern class Http2ServerRequest extends node.stream.Readable {
	function new(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, options:node.stream.ReadableOptions, rawHeaders:haxe.ds.ReadOnlyArray<String>);
	final aborted : Bool;
	final authority : String;
	final connection : ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>;
	final complete : Bool;
	final headers : IncomingHttpHeaders;
	final httpVersion : String;
	final httpVersionMinor : Float;
	final httpVersionMajor : Float;
	final method : String;
	final rawHeaders : Array<String>;
	final rawTrailers : Array<String>;
	final scheme : String;
	final socket : ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>;
	final stream : ServerHttp2Stream;
	final trailers : IncomingHttpHeaders;
	final url : String;
	function setTimeout(msecs:Float, ?callback:() -> Void):Void;
	function read(?size:Float):Null<ts.AnyOf2<String, global.Buffer>>;
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
		
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. error
		5. pause
		6. readable
		7. resume
		
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. error
		5. pause
		6. readable
		7. resume
		
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. error
		5. pause
		6. readable
		7. resume
		
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. error
		5. pause
		6. readable
		7. resume
		
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. error
		5. pause
		6. readable
		7. resume
		
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
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(chunk:ts.AnyOf2<String, global.Buffer>) -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2ServerRequest { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerRequest { })
	function addListener(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerRequest;
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, chunk:ts.AnyOf2<String, global.Buffer>):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool { })
	function emit(event:String, hadError:Bool, code:Float):Bool;
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(chunk:ts.AnyOf2<String, global.Buffer>) -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2ServerRequest { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerRequest { })
	function on(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerRequest;
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(chunk:ts.AnyOf2<String, global.Buffer>) -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2ServerRequest { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerRequest { })
	function once(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerRequest;
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(chunk:ts.AnyOf2<String, global.Buffer>) -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2ServerRequest { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerRequest { })
	function prependListener(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerRequest;
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(chunk:ts.AnyOf2<String, global.Buffer>) -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2ServerRequest { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerRequest { })
	function prependOnceListener(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerRequest;
	function setEncoding(encoding:global.BufferEncoding):Http2ServerRequest;
	function pause():Http2ServerRequest;
	function resume():Http2ServerRequest;
	function unpipe(?destination:global.nodejs.WritableStream):Http2ServerRequest;
	function wrap(oldStream:global.nodejs.ReadableStream):Http2ServerRequest;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerRequest { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerRequest { })
	function removeListener(event:String, listener:() -> Void):Http2ServerRequest;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerRequest;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Http2ServerRequest;
	function setMaxListeners(n:Float):Http2ServerRequest;
	static var prototype : Http2ServerRequest;
}