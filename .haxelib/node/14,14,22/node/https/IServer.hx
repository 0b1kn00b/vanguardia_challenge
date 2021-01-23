package node.https;

typedef IServer = {
	/**
		The server.addContext() method adds a secure context that will be
		used if the client request's SNI name matches the supplied hostname
		(or wildcard).
	**/
	function addContext(hostName:String, credentials:node.tls.SecureContextOptions):Void;
	/**
		Returns the session ticket keys.
	**/
	function getTicketKeys():global.Buffer;
	/**
		The server.setSecureContext() method replaces the
		secure context of an existing server. Existing connections to the
		server are not interrupted.
	**/
	function setSecureContext(details:node.tls.SecureContextOptions):Void;
	/**
		The server.setSecureContext() method replaces the secure context of
		an existing server. Existing connections to the server are not
		interrupted.
	**/
	function setTicketKeys(keys:global.Buffer):Void;
	/**
		events.EventEmitter
		1. tlsClientError
		2. newSession
		3. OCSPRequest
		4. resumeSession
		5. secureConnection
		6. keylog
	**/
	@:overload(function(event:String, listener:(err:js.lib.Error, tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, sessionData:global.Buffer, callback:(err:js.lib.Error, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.Buffer, issuer:global.Buffer, callback:(err:Null<js.lib.Error>, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, callback:(err:js.lib.Error, sessionData:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(line:global.Buffer, tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	@:overload(function(event:String, err:js.lib.Error, tlsSocket:node.tls.TLSSocket):Bool { })
	@:overload(function(event:String, sessionId:global.Buffer, sessionData:global.Buffer, callback:(err:js.lib.Error, resp:global.Buffer) -> Void):Bool { })
	@:overload(function(event:String, certificate:global.Buffer, issuer:global.Buffer, callback:(err:Null<js.lib.Error>, resp:global.Buffer) -> Void):Bool { })
	@:overload(function(event:String, sessionId:global.Buffer, callback:(err:js.lib.Error, sessionData:global.Buffer) -> Void):Bool { })
	@:overload(function(event:String, tlsSocket:node.tls.TLSSocket):Bool { })
	@:overload(function(event:String, line:global.Buffer, tlsSocket:node.tls.TLSSocket):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:(err:js.lib.Error, tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, sessionData:global.Buffer, callback:(err:js.lib.Error, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.Buffer, issuer:global.Buffer, callback:(err:Null<js.lib.Error>, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, callback:(err:js.lib.Error, sessionData:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(line:global.Buffer, tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	@:overload(function(event:String, listener:(err:js.lib.Error, tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, sessionData:global.Buffer, callback:(err:js.lib.Error, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.Buffer, issuer:global.Buffer, callback:(err:Null<js.lib.Error>, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, callback:(err:js.lib.Error, sessionData:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(line:global.Buffer, tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	@:overload(function(event:String, listener:(err:js.lib.Error, tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, sessionData:global.Buffer, callback:(err:js.lib.Error, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.Buffer, issuer:global.Buffer, callback:(err:Null<js.lib.Error>, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, callback:(err:js.lib.Error, sessionData:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(line:global.Buffer, tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	@:overload(function(event:String, listener:(err:js.lib.Error, tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, sessionData:global.Buffer, callback:(err:js.lib.Error, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.Buffer, issuer:global.Buffer, callback:(err:Null<js.lib.Error>, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, callback:(err:js.lib.Error, sessionData:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(line:global.Buffer, tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	@:overload(function(?port:Float, ?hostname:String, ?listeningListener:() -> Void):Server { })
	@:overload(function(?port:Float, ?backlog:Float, ?listeningListener:() -> Void):Server { })
	@:overload(function(?port:Float, ?listeningListener:() -> Void):Server { })
	@:overload(function(path:String, ?backlog:Float, ?listeningListener:() -> Void):Server { })
	@:overload(function(path:String, ?listeningListener:() -> Void):Server { })
	@:overload(function(options:node.net.ListenOptions, ?listeningListener:() -> Void):Server { })
	@:overload(function(handle:Dynamic, ?backlog:Float, ?listeningListener:() -> Void):Server { })
	@:overload(function(handle:Dynamic, ?listeningListener:() -> Void):Server { })
	function listen(?port:Float, ?hostname:String, ?backlog:Float, ?listeningListener:() -> Void):Server;
	function close(?callback:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Server;
	function address():Null<ts.AnyOf2<String, node.net.AddressInfo>>;
	function getConnections(cb:(error:Null<js.lib.Error>, count:Float) -> Void):Void;
	function ref():Server;
	function unref():Server;
	var maxConnections : Float;
	var connections : Float;
	var listening : Bool;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Server;
	function setMaxListeners(n:Float):Server;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function listenerCount(event:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	@:overload(function(callback:() -> Void):Server { })
	function setTimeout(?msecs:Float, ?callback:() -> Void):Server;
	/**
		Limits maximum incoming headers count. If set to 0, no limit will be applied.
	**/
	var maxHeadersCount : Null<Float>;
	var timeout : Float;
	/**
		Limit the amount of time the parser will wait to receive the complete HTTP headers.
	**/
	var headersTimeout : Float;
	var keepAliveTimeout : Float;
	/**
		Sets the timeout value in milliseconds for receiving the entire request from the client.
	**/
	var requestTimeout : Float;
};