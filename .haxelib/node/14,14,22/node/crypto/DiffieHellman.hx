package node.crypto;

@:jsRequire("crypto", "DiffieHellman") extern class DiffieHellman {
	private function new();
	@:overload(function(encoding:BinaryToTextEncoding):String { })
	function generateKeys():global.Buffer;
	@:overload(function(other_public_key:String, input_encoding:BinaryToTextEncoding):global.Buffer { })
	@:overload(function(other_public_key:global.nodejs.ArrayBufferView, output_encoding:BinaryToTextEncoding):String { })
	@:overload(function(other_public_key:String, input_encoding:BinaryToTextEncoding, output_encoding:BinaryToTextEncoding):String { })
	function computeSecret(other_public_key:global.nodejs.ArrayBufferView):global.Buffer;
	@:overload(function(encoding:BinaryToTextEncoding):String { })
	function getPrime():global.Buffer;
	@:overload(function(encoding:BinaryToTextEncoding):String { })
	function getGenerator():global.Buffer;
	@:overload(function(encoding:BinaryToTextEncoding):String { })
	function getPublicKey():global.Buffer;
	@:overload(function(encoding:BinaryToTextEncoding):String { })
	function getPrivateKey():global.Buffer;
	@:overload(function(public_key:String, encoding:global.BufferEncoding):Void { })
	function setPublicKey(public_key:global.nodejs.ArrayBufferView):Void;
	@:overload(function(private_key:String, encoding:global.BufferEncoding):Void { })
	function setPrivateKey(private_key:global.nodejs.ArrayBufferView):Void;
	var verifyError : Float;
	static var prototype : DiffieHellman;
}