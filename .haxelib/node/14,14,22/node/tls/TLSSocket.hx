package node.tls;

@:jsRequire("tls", "TLSSocket") extern class TLSSocket extends node.net.Socket {
	/**
		Construct a new tls.TLSSocket object from an existing TCP socket.
	**/
	function new(socket:node.net.Socket, ?options:TLSSocketOptions);
	/**
		A boolean that is true if the peer certificate was signed by one of the specified CAs, otherwise false.
	**/
	var authorized : Bool;
	/**
		The reason why the peer's certificate has not been verified.
		This property becomes available only when tlsSocket.authorized === false.
	**/
	var authorizationError : js.lib.Error;
	/**
		Static boolean value, always true.
		May be used to distinguish TLS sockets from regular ones.
	**/
	var encrypted : Bool;
	/**
		String containing the selected ALPN protocol.
		When ALPN has no selected protocol, tlsSocket.alpnProtocol equals false.
	**/
	@:optional
	var alpnProtocol : String;
	/**
		Returns an object representing the local certificate. The returned
		object has some properties corresponding to the fields of the
		certificate.
		
		See tls.TLSSocket.getPeerCertificate() for an example of the
		certificate structure.
		
		If there is no local certificate, an empty object will be returned.
		If the socket has been destroyed, null will be returned.
	**/
	function getCertificate():Null<ts.AnyOf2<Dynamic, PeerCertificate>>;
	/**
		Returns an object representing the cipher name and the SSL/TLS protocol version of the current connection.
	**/
	function getCipher():CipherNameAndProtocol;
	/**
		Returns an object representing the type, name, and size of parameter
		of an ephemeral key exchange in Perfect Forward Secrecy on a client
		connection. It returns an empty object when the key exchange is not
		ephemeral. As this is only supported on a client socket; null is
		returned if called on a server socket. The supported types are 'DH'
		and 'ECDH'. The name property is available only when type is 'ECDH'.
		
		For example: { type: 'ECDH', name: 'prime256v1', size: 256 }.
	**/
	function getEphemeralKeyInfo():Null<ts.AnyOf2<Dynamic, EphemeralKeyInfo>>;
	/**
		Returns the latest Finished message that has
		been sent to the socket as part of a SSL/TLS handshake, or undefined
		if no Finished message has been sent yet.
		
		As the Finished messages are message digests of the complete
		handshake (with a total of 192 bits for TLS 1.0 and more for SSL
		3.0), they can be used for external authentication procedures when
		the authentication provided by SSL/TLS is not desired or is not
		enough.
		
		Corresponds to the SSL_get_finished routine in OpenSSL and may be
		used to implement the tls-unique channel binding from RFC 5929.
	**/
	function getFinished():Null<global.Buffer>;
	/**
		Returns an object representing the peer's certificate.
		The returned object has some properties corresponding to the field of the certificate.
		If detailed argument is true the full chain with issuer property will be returned,
		if false only the top certificate without issuer property.
		If the peer does not provide a certificate, it returns null or an empty object.
	**/
	@:overload(function(?detailed:Bool):PeerCertificate { })
	@:overload(function(?detailed:Bool):ts.AnyOf2<PeerCertificate, DetailedPeerCertificate> { })
	function getPeerCertificate(detailed:Bool):DetailedPeerCertificate;
	/**
		Returns the latest Finished message that is expected or has actually
		been received from the socket as part of a SSL/TLS handshake, or
		undefined if there is no Finished message so far.
		
		As the Finished messages are message digests of the complete
		handshake (with a total of 192 bits for TLS 1.0 and more for SSL
		3.0), they can be used for external authentication procedures when
		the authentication provided by SSL/TLS is not desired or is not
		enough.
		
		Corresponds to the SSL_get_peer_finished routine in OpenSSL and may
		be used to implement the tls-unique channel binding from RFC 5929.
	**/
	function getPeerFinished():Null<global.Buffer>;
	/**
		Returns a string containing the negotiated SSL/TLS protocol version of the current connection.
		The value `'unknown'` will be returned for connected sockets that have not completed the handshaking process.
		The value `null` will be returned for server sockets or disconnected client sockets.
		See https://www.openssl.org/docs/man1.0.2/ssl/SSL_get_version.html for more information.
	**/
	function getProtocol():Null<String>;
	/**
		Could be used to speed up handshake establishment when reconnecting to the server.
	**/
	function getSession():Null<global.Buffer>;
	/**
		Returns a list of signature algorithms shared between the server and
		the client in the order of decreasing preference.
	**/
	function getSharedSigalgs():Array<String>;
	/**
		NOTE: Works only with client TLS sockets.
		Useful only for debugging, for session reuse provide session option to tls.connect().
	**/
	function getTLSTicket():Null<global.Buffer>;
	/**
		Returns true if the session was reused, false otherwise.
	**/
	function isSessionReused():Bool;
	/**
		Initiate TLS renegotiation process.
		
		NOTE: Can be used to request peer's certificate after the secure connection has been established.
		ANOTHER NOTE: When running as the server, socket will be destroyed with an error after handshakeTimeout timeout.
	**/
	function renegotiate(options:{ @:optional var rejectUnauthorized : Bool; @:optional var requestCert : Bool; }, callback:(err:Null<js.lib.Error>) -> Void):Null<Bool>;
	/**
		Set maximum TLS fragment size (default and maximum value is: 16384, minimum is: 512).
		Smaller fragment size decreases buffering latency on the client: large fragments are buffered by
		the TLS layer until the entire fragment is received and its integrity is verified;
		large fragments can span multiple roundtrips, and their processing can be delayed due to packet
		loss or reordering. However, smaller fragments add extra TLS framing bytes and CPU overhead,
		which may decrease overall server throughput.
	**/
	function setMaxSendFragment(size:Float):Bool;
	/**
		Disables TLS renegotiation for this TLSSocket instance. Once called,
		attempts to renegotiate will trigger an 'error' event on the
		TLSSocket.
	**/
	function disableRenegotiation():Void;
	/**
		When enabled, TLS packet trace information is written to `stderr`. This can be
		used to debug TLS connection problems.
		
		Note: The format of the output is identical to the output of `openssl s_client
		-trace` or `openssl s_server -trace`. While it is produced by OpenSSL's
		`SSL_trace()` function, the format is undocumented, can change without notice,
		and should not be relied on.
	**/
	function enableTrace():Void;
	function exportKeyingMaterial(length:Float, label:String, context:global.Buffer):global.Buffer;
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
	@:overload(function(event:String, listener:(response:global.Buffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(session:global.Buffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(line:global.Buffer) -> Void):TLSSocket { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):TLSSocket;
	@:overload(function(event:String, response:global.Buffer):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, session:global.Buffer):Bool { })
	@:overload(function(event:String, line:global.Buffer):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:(response:global.Buffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(session:global.Buffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(line:global.Buffer) -> Void):TLSSocket { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):TLSSocket;
	@:overload(function(event:String, listener:(response:global.Buffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(session:global.Buffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(line:global.Buffer) -> Void):TLSSocket { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):TLSSocket;
	@:overload(function(event:String, listener:(response:global.Buffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(session:global.Buffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(line:global.Buffer) -> Void):TLSSocket { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):TLSSocket;
	@:overload(function(event:String, listener:(response:global.Buffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(session:global.Buffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(line:global.Buffer) -> Void):TLSSocket { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):TLSSocket;
	@:overload(function(port:Float, host:String, ?connectionListener:() -> Void):TLSSocket { })
	@:overload(function(port:Float, ?connectionListener:() -> Void):TLSSocket { })
	@:overload(function(path:String, ?connectionListener:() -> Void):TLSSocket { })
	function connect(options:node.net.SocketConnectOpts, ?connectionListener:() -> Void):TLSSocket;
	function setEncoding(?encoding:global.BufferEncoding):TLSSocket;
	function pause():TLSSocket;
	function resume():TLSSocket;
	function setTimeout(timeout:Float, ?callback:() -> Void):TLSSocket;
	function setNoDelay(?noDelay:Bool):TLSSocket;
	function setKeepAlive(?enable:Bool, ?initialDelay:Float):TLSSocket;
	function unref():TLSSocket;
	function ref():TLSSocket;
	function setDefaultEncoding(encoding:global.BufferEncoding):TLSSocket;
	function unpipe(?destination:global.nodejs.WritableStream):TLSSocket;
	function wrap(oldStream:global.nodejs.ReadableStream):TLSSocket;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):TLSSocket { })
	function removeListener(event:String, listener:() -> Void):TLSSocket;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):TLSSocket;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):TLSSocket;
	function setMaxListeners(n:Float):TLSSocket;
	static var prototype : TLSSocket;
}