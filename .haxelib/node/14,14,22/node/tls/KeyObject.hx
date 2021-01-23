package node.tls;

typedef KeyObject = {
	/**
		Private keys in PEM format.
	**/
	var pem : ts.AnyOf2<String, global.Buffer>;
	/**
		Optional passphrase.
	**/
	@:optional
	var passphrase : String;
};