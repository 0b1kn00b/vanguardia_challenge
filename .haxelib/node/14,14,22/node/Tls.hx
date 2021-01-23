package node;

@:jsRequire("tls") @valueModuleOnly extern class Tls {
	static function checkServerIdentity(host:String, cert:node.tls.PeerCertificate):Null<js.lib.Error>;
	@:overload(function(options:node.tls.TlsOptions, ?secureConnectionListener:(socket:node.tls.TLSSocket) -> Void):node.tls.Server { })
	static function createServer(?secureConnectionListener:(socket:node.tls.TLSSocket) -> Void):node.tls.Server;
	@:overload(function(port:Float, ?host:String, ?options:node.tls.ConnectionOptions, ?secureConnectListener:() -> Void):node.tls.TLSSocket { })
	@:overload(function(port:Float, ?options:node.tls.ConnectionOptions, ?secureConnectListener:() -> Void):node.tls.TLSSocket { })
	static function connect(options:node.tls.ConnectionOptions, ?secureConnectListener:() -> Void):node.tls.TLSSocket;
	static function createSecurePair(?credentials:node.tls.SecureContext, ?isServer:Bool, ?requestCert:Bool, ?rejectUnauthorized:Bool):node.tls.SecurePair;
	static function createSecureContext(?options:node.tls.SecureContextOptions):node.tls.SecureContext;
	static function getCiphers():Array<String>;
	static final CLIENT_RENEG_LIMIT : Float;
	static final CLIENT_RENEG_WINDOW : Float;
	/**
		The default curve name to use for ECDH key agreement in a tls server.
		The default value is 'auto'. See tls.createSecureContext() for further
		information.
	**/
	static var DEFAULT_ECDH_CURVE : String;
	/**
		The default value of the maxVersion option of
		tls.createSecureContext(). It can be assigned any of the supported TLS
		protocol versions, 'TLSv1.3', 'TLSv1.2', 'TLSv1.1', or 'TLSv1'. Default:
		'TLSv1.3', unless changed using CLI options. Using --tls-max-v1.2 sets
		the default to 'TLSv1.2'. Using --tls-max-v1.3 sets the default to
		'TLSv1.3'. If multiple of the options are provided, the highest maximum
		is used.
	**/
	static var DEFAULT_MAX_VERSION : node.tls.SecureVersion;
	/**
		The default value of the minVersion option of tls.createSecureContext().
		It can be assigned any of the supported TLS protocol versions,
		'TLSv1.3', 'TLSv1.2', 'TLSv1.1', or 'TLSv1'. Default: 'TLSv1.2', unless
		changed using CLI options. Using --tls-min-v1.0 sets the default to
		'TLSv1'. Using --tls-min-v1.1 sets the default to 'TLSv1.1'. Using
		--tls-min-v1.3 sets the default to 'TLSv1.3'. If multiple of the options
		are provided, the lowest minimum is used.
	**/
	static var DEFAULT_MIN_VERSION : node.tls.SecureVersion;
	/**
		An immutable array of strings representing the root certificates (in PEM
		format) used for verifying peer certificates. This is the default value
		of the ca option to tls.createSecureContext().
	**/
	static final rootCertificates : haxe.ds.ReadOnlyArray<String>;
}