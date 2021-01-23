package node.crypto;

typedef ICertificate = {
	function exportChallenge(spkac:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>):global.Buffer;
	function exportPublicKey(spkac:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, ?encoding:String):global.Buffer;
	function verifySpkac(spkac:global.nodejs.ArrayBufferView):Bool;
};