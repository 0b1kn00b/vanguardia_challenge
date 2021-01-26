@:jsRequire("ws") extern class Ws extends node.Events {
	@:overload(function(address:ts.AnyOf2<String, node.url.URL>, ?protocols:ts.AnyOf2<String, Array<String>>, ?options:ts.AnyOf2<ws.ClientOptions, node.http.ClientRequestArgs>):Ws { })
	function new(address:ts.AnyOf2<String, node.url.URL>, ?options:ts.AnyOf2<ws.ClientOptions, node.http.ClientRequestArgs>);
	var binaryType : String;
	var bufferedAmount : Float;
	var extensions : String;
	var protocol : String;
	var readyState : Float;
	var url : String;
	var CONNECTING : Float;
	var OPEN : Float;
	var CLOSING : Float;
	var CLOSED : Float;
	dynamic function onopen(event:ws.OpenEvent):Void;
	dynamic function onerror(event:ws.ErrorEvent):Void;
	dynamic function onclose(event:ws.CloseEvent):Void;
	dynamic function onmessage(event:ws.MessageEvent):Void;
	function close(?code:Float, ?data:String):Void;
	function ping(?data:Dynamic, ?mask:Bool, ?cb:(err:js.lib.Error) -> Void):Void;
	function pong(?data:Dynamic, ?mask:Bool, ?cb:(err:js.lib.Error) -> Void):Void;
	@:overload(function(data:Dynamic, options:{ @:optional var mask : Bool; @:optional var binary : Bool; @:optional var compress : Bool; @:optional var fin : Bool; }, ?cb:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Void { })
	function send(data:Dynamic, ?cb:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Void;
	function terminate():Void;
	@:overload(function(method:String, cb:(event:{ var wasClean : Bool; var code : Float; var reason : String; var target : Ws; }) -> Void, ?options:ws.EventListenerOptions):Void { })
	@:overload(function(method:String, cb:(event:{ var error : Dynamic; var message : Dynamic; var type : String; var target : Ws; }) -> Void, ?options:ws.EventListenerOptions):Void { })
	@:overload(function(method:String, cb:(event:{ var target : Ws; }) -> Void, ?options:ws.EventListenerOptions):Void { })
	@:overload(function(method:String, listener:() -> Void, ?options:ws.EventListenerOptions):Void { })
	function addEventListener(method:String, cb:(event:{ var data : Dynamic; var type : String; var target : Ws; }) -> Void, ?options:ws.EventListenerOptions):Void;
	@:overload(function(method:String, ?cb:(event:{ var wasClean : Bool; var code : Float; var reason : String; var target : Ws; }) -> Void):Void { })
	@:overload(function(method:String, ?cb:(event:{ var error : Dynamic; var message : Dynamic; var type : String; var target : Ws; }) -> Void):Void { })
	@:overload(function(method:String, ?cb:(event:{ var target : Ws; }) -> Void):Void { })
	@:overload(function(method:String, ?listener:() -> Void):Void { })
	function removeEventListener(method:String, ?cb:(event:{ var data : Dynamic; var type : String; var target : Ws; }) -> Void):Void;
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Ws { })
	@:overload(function(event:String, listener:(request:node.http.IncomingMessage) -> Void):Ws { })
	@:overload(function(event:String, listener:(data:ws.Data) -> Void):Ws { })
	@:overload(function(event:String, listener:() -> Void):Ws { })
	@:overload(function(event:String, listener:(data:global.Buffer) -> Void):Ws { })
	@:overload(function(event:String, listener:(request:node.http.ClientRequest, response:node.http.IncomingMessage) -> Void):Ws { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Ws { })
	function on(event:String, listener:(code:Float, reason:String) -> Void):Ws;
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Ws { })
	@:overload(function(event:String, listener:(request:node.http.IncomingMessage) -> Void):Ws { })
	@:overload(function(event:String, listener:(data:ws.Data) -> Void):Ws { })
	@:overload(function(event:String, listener:() -> Void):Ws { })
	@:overload(function(event:String, listener:(data:global.Buffer) -> Void):Ws { })
	@:overload(function(event:String, listener:(request:node.http.ClientRequest, response:node.http.IncomingMessage) -> Void):Ws { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Ws { })
	function addListener(event:String, listener:(code:Float, message:String) -> Void):Ws;
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Ws { })
	@:overload(function(event:String, listener:(request:node.http.IncomingMessage) -> Void):Ws { })
	@:overload(function(event:String, listener:(data:ws.Data) -> Void):Ws { })
	@:overload(function(event:String, listener:() -> Void):Ws { })
	@:overload(function(event:String, listener:(data:global.Buffer) -> Void):Ws { })
	@:overload(function(event:String, listener:(request:node.http.ClientRequest, response:node.http.IncomingMessage) -> Void):Ws { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Ws { })
	function removeListener(event:String, listener:(code:Float, message:String) -> Void):Ws;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Ws;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Ws;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Ws;
	function setMaxListeners(n:Float):Ws;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Ws;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Ws;
	static var prototype : Ws;
	@:native("CONNECTING")
	static var CONNECTING_ : Float;
	@:native("OPEN")
	static var OPEN_ : Float;
	@:native("CLOSING")
	static var CLOSING_ : Float;
	@:native("CLOSED")
	static var CLOSED_ : Float;
	static function createWebSocketStream(websocket:Ws, ?options:node.stream.DuplexOptions):node.stream.Duplex;
}