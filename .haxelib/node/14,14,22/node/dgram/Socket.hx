package node.dgram;

@:jsRequire("dgram", "Socket") extern class Socket extends node.Events {
	function new();
	function addMembership(multicastAddress:String, ?multicastInterface:String):Void;
	function address():node.net.AddressInfo;
	@:overload(function(?port:Float, ?callback:() -> Void):Void { })
	@:overload(function(?callback:() -> Void):Void { })
	@:overload(function(options:BindOptions, ?callback:() -> Void):Void { })
	function bind(?port:Float, ?address:String, ?callback:() -> Void):Void;
	function close(?callback:() -> Void):Void;
	@:overload(function(port:Float, callback:() -> Void):Void { })
	function connect(port:Float, ?address:String, ?callback:() -> Void):Void;
	function disconnect():Void;
	function dropMembership(multicastAddress:String, ?multicastInterface:String):Void;
	function getRecvBufferSize():Float;
	function getSendBufferSize():Float;
	function ref():Socket;
	function remoteAddress():node.net.AddressInfo;
	@:overload(function(msg:ts.AnyOf3<String, haxe.ds.ReadOnlyArray<Dynamic>, js.lib.Uint8Array>, ?port:Float, ?callback:(error:Null<js.lib.Error>, bytes:Float) -> Void):Void { })
	@:overload(function(msg:ts.AnyOf3<String, haxe.ds.ReadOnlyArray<Dynamic>, js.lib.Uint8Array>, ?callback:(error:Null<js.lib.Error>, bytes:Float) -> Void):Void { })
	@:overload(function(msg:ts.AnyOf2<String, js.lib.Uint8Array>, offset:Float, length:Float, ?port:Float, ?address:String, ?callback:(error:Null<js.lib.Error>, bytes:Float) -> Void):Void { })
	@:overload(function(msg:ts.AnyOf2<String, js.lib.Uint8Array>, offset:Float, length:Float, ?port:Float, ?callback:(error:Null<js.lib.Error>, bytes:Float) -> Void):Void { })
	@:overload(function(msg:ts.AnyOf2<String, js.lib.Uint8Array>, offset:Float, length:Float, ?callback:(error:Null<js.lib.Error>, bytes:Float) -> Void):Void { })
	function send(msg:ts.AnyOf3<String, haxe.ds.ReadOnlyArray<Dynamic>, js.lib.Uint8Array>, ?port:Float, ?address:String, ?callback:(error:Null<js.lib.Error>, bytes:Float) -> Void):Void;
	function setBroadcast(flag:Bool):Void;
	function setMulticastInterface(multicastInterface:String):Void;
	function setMulticastLoopback(flag:Bool):Void;
	function setMulticastTTL(ttl:Float):Void;
	function setRecvBufferSize(size:Float):Void;
	function setSendBufferSize(size:Float):Void;
	function setTTL(ttl:Float):Void;
	function unref():Socket;
	/**
		Tells the kernel to join a source-specific multicast channel at the given
		`sourceAddress` and `groupAddress`, using the `multicastInterface` with the
		`IP_ADD_SOURCE_MEMBERSHIP` socket option.
		If the `multicastInterface` argument
		is not specified, the operating system will choose one interface and will add
		membership to it.
		To add membership to every available interface, call
		`socket.addSourceSpecificMembership()` multiple times, once per interface.
	**/
	function addSourceSpecificMembership(sourceAddress:String, groupAddress:String, ?multicastInterface:String):Void;
	/**
		Instructs the kernel to leave a source-specific multicast channel at the given
		`sourceAddress` and `groupAddress` using the `IP_DROP_SOURCE_MEMBERSHIP`
		socket option. This method is automatically called by the kernel when the
		socket is closed or the process terminates, so most apps will never have
		reason to call this.
		
		If `multicastInterface` is not specified, the operating system will attempt to
		drop membership on all valid interfaces.
	**/
	function dropSourceSpecificMembership(sourceAddress:String, groupAddress:String, ?multicastInterface:String):Void;
	/**
		events.EventEmitter
		1. close
		2. connect
		3. error
		4. listening
		5. message
	**/
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(msg:global.Buffer, rinfo:RemoteInfo) -> Void):Socket { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, msg:global.Buffer, rinfo:RemoteInfo):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(msg:global.Buffer, rinfo:RemoteInfo) -> Void):Socket { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(msg:global.Buffer, rinfo:RemoteInfo) -> Void):Socket { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(msg:global.Buffer, rinfo:RemoteInfo) -> Void):Socket { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(msg:global.Buffer, rinfo:RemoteInfo) -> Void):Socket { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Socket;
	function setMaxListeners(n:Float):Socket;
	static var prototype : Socket;
}