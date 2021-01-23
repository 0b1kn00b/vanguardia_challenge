package node.crypto;

@:jsRequire("crypto", "ECDH") extern class ECDH {
	private function new();
	@:overload(function(encoding:BinaryToTextEncoding, ?format:ECDHKeyFormat):String { })
	function generateKeys():global.Buffer;
	@:overload(function(other_public_key:String, input_encoding:BinaryToTextEncoding):global.Buffer { })
	@:overload(function(other_public_key:global.nodejs.ArrayBufferView, output_encoding:BinaryToTextEncoding):String { })
	@:overload(function(other_public_key:String, input_encoding:BinaryToTextEncoding, output_encoding:BinaryToTextEncoding):String { })
	function computeSecret(other_public_key:global.nodejs.ArrayBufferView):global.Buffer;
	@:overload(function(encoding:BinaryToTextEncoding):String { })
	function getPrivateKey():global.Buffer;
	@:overload(function(encoding:BinaryToTextEncoding, ?format:ECDHKeyFormat):String { })
	function getPublicKey():global.Buffer;
	@:overload(function(private_key:String, encoding:BinaryToTextEncoding):Void { })
	function setPrivateKey(private_key:global.nodejs.ArrayBufferView):Void;
	static var prototype : ECDH;
	static function convertKey(key:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, curve:String, ?inputEncoding:BinaryToTextEncoding, ?outputEncoding:String, ?format:ECDHKeyFormat):ts.AnyOf2<String, global.Buffer>;
}