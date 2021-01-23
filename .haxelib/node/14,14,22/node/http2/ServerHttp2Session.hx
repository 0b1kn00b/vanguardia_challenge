package node.http2;

typedef ServerHttp2Session = {
	final server : ts.AnyOf2<Http2Server, Http2SecureServer>;
	function altsvc(alt:String, originOrStream:ts.AnyOf4<String, Float, node.url.URL, AlternativeServiceOptions>):Void;
	function origin(args:haxe.extern.Rest<ts.AnyOf3<String, node.url.URL, { var origin : String; }>>):Void;
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):ServerHttp2Session { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerHttp2Session { })
	function addListener(event:String, listener:(session:ServerHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>) -> Void):ServerHttp2Session;
	@:overload(function(event:String, stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float):Bool { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool { })
	function emit(event:String, session:ServerHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>):Bool;
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):ServerHttp2Session { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerHttp2Session { })
	function on(event:String, listener:(session:ServerHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>) -> Void):ServerHttp2Session;
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):ServerHttp2Session { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerHttp2Session { })
	function once(event:String, listener:(session:ServerHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>) -> Void):ServerHttp2Session;
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):ServerHttp2Session { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerHttp2Session { })
	function prependListener(event:String, listener:(session:ServerHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>) -> Void):ServerHttp2Session;
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):ServerHttp2Session { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerHttp2Session { })
	function prependOnceListener(event:String, listener:(session:ServerHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>) -> Void):ServerHttp2Session;
	@:optional
	final alpnProtocol : String;
	final closed : Bool;
	final connecting : Bool;
	final destroyed : Bool;
	@:optional
	final encrypted : Bool;
	final localSettings : Settings;
	@:optional
	final originSet : Array<String>;
	final pendingSettingsAck : Bool;
	final remoteSettings : Settings;
	final socket : ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>;
	final state : SessionState;
	final type : Float;
	function close(?callback:() -> Void):Void;
	function destroy(?error:js.lib.Error, ?code:Float):Void;
	function goaway(?code:Float, ?lastStreamID:Float, ?opaqueData:global.nodejs.ArrayBufferView):Void;
	@:overload(function(payload:global.nodejs.ArrayBufferView, callback:(err:Null<js.lib.Error>, duration:Float, payload:global.Buffer) -> Void):Bool { })
	function ping(callback:(err:Null<js.lib.Error>, duration:Float, payload:global.Buffer) -> Void):Bool;
	function ref():Void;
	function setLocalWindowSize(windowSize:Float):Void;
	function setTimeout(msecs:Float, ?callback:() -> Void):Void;
	function settings(settings:Settings):Void;
	function unref():Void;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerHttp2Session;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerHttp2Session;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):ServerHttp2Session;
	function setMaxListeners(n:Float):ServerHttp2Session;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function listenerCount(event:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
};