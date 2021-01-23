package node;

@:jsRequire("crypto") @valueModuleOnly extern class Crypto {
	static function createHash(algorithm:String, ?options:node.crypto.HashOptions):node.crypto.Hash;
	static function createHmac(algorithm:String, key:ts.AnyOf14<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView, node.crypto.KeyObject>, ?options:node.stream.TransformOptions):node.crypto.Hmac;
	@:overload(function(algorithm:node.crypto.CipherGCMTypes, password:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, ?options:node.crypto.CipherGCMOptions):node.crypto.CipherGCM { })
	@:overload(function(algorithm:String, password:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, ?options:node.stream.TransformOptions):node.crypto.Cipher { })
	static function createCipher(algorithm:node.crypto.CipherCCMTypes, password:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, options:node.crypto.CipherCCMOptions):node.crypto.CipherCCM;
	@:overload(function(algorithm:node.crypto.CipherGCMTypes, key:ts.AnyOf14<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView, node.crypto.KeyObject>, iv:Null<ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>>, ?options:node.crypto.CipherGCMOptions):node.crypto.CipherGCM { })
	@:overload(function(algorithm:String, key:ts.AnyOf14<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView, node.crypto.KeyObject>, iv:Null<ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>>, ?options:node.stream.TransformOptions):node.crypto.Cipher { })
	static function createCipheriv(algorithm:node.crypto.CipherCCMTypes, key:ts.AnyOf14<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView, node.crypto.KeyObject>, iv:Null<ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>>, options:node.crypto.CipherCCMOptions):node.crypto.CipherCCM;
	@:overload(function(algorithm:node.crypto.CipherGCMTypes, password:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, ?options:node.crypto.CipherGCMOptions):node.crypto.DecipherGCM { })
	@:overload(function(algorithm:String, password:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, ?options:node.stream.TransformOptions):node.crypto.Decipher { })
	static function createDecipher(algorithm:node.crypto.CipherCCMTypes, password:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, options:node.crypto.CipherCCMOptions):node.crypto.DecipherCCM;
	@:overload(function(algorithm:node.crypto.CipherGCMTypes, key:ts.AnyOf14<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView, node.crypto.KeyObject>, iv:Null<ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>>, ?options:node.crypto.CipherGCMOptions):node.crypto.DecipherGCM { })
	@:overload(function(algorithm:String, key:ts.AnyOf14<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView, node.crypto.KeyObject>, iv:Null<ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>>, ?options:node.stream.TransformOptions):node.crypto.Decipher { })
	static function createDecipheriv(algorithm:node.crypto.CipherCCMTypes, key:ts.AnyOf14<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView, node.crypto.KeyObject>, iv:Null<ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>>, options:node.crypto.CipherCCMOptions):node.crypto.DecipherCCM;
	static function createPrivateKey(key:ts.AnyOf3<String, global.Buffer, node.crypto.PrivateKeyInput>):node.crypto.KeyObject;
	static function createPublicKey(key:ts.AnyOf4<String, global.Buffer, node.crypto.KeyObject, node.crypto.PublicKeyInput>):node.crypto.KeyObject;
	static function createSecretKey(key:global.nodejs.ArrayBufferView):node.crypto.KeyObject;
	static function createSign(algorithm:String, ?options:node.stream.WritableOptions):node.crypto.Signer;
	static function createVerify(algorithm:String, ?options:node.stream.WritableOptions):node.crypto.Verify;
	@:overload(function(prime:global.nodejs.ArrayBufferView):node.crypto.DiffieHellman { })
	@:overload(function(prime:String, prime_encoding:node.crypto.BinaryToTextEncoding):node.crypto.DiffieHellman { })
	@:overload(function(prime:String, prime_encoding:node.crypto.BinaryToTextEncoding, generator:ts.AnyOf13<Float, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>):node.crypto.DiffieHellman { })
	@:overload(function(prime:String, prime_encoding:node.crypto.BinaryToTextEncoding, generator:String, generator_encoding:node.crypto.BinaryToTextEncoding):node.crypto.DiffieHellman { })
	static function createDiffieHellman(prime_length:Float, ?generator:ts.AnyOf13<Float, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>):node.crypto.DiffieHellman;
	static function getDiffieHellman(group_name:String):node.crypto.DiffieHellman;
	static function pbkdf2(password:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, salt:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, iterations:Float, keylen:Float, digest:String, callback:(err:Null<js.lib.Error>, derivedKey:global.Buffer) -> Dynamic):Void;
	static function pbkdf2Sync(password:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, salt:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, iterations:Float, keylen:Float, digest:String):global.Buffer;
	@:overload(function(size:Float, callback:(err:Null<js.lib.Error>, buf:global.Buffer) -> Void):Void { })
	static function randomBytes(size:Float):global.Buffer;
	@:overload(function(size:Float, callback:(err:Null<js.lib.Error>, buf:global.Buffer) -> Void):Void { })
	static function pseudoRandomBytes(size:Float):global.Buffer;
	@:overload(function(min:Float, max:Float):Float { })
	@:overload(function(max:Float, callback:(err:Null<js.lib.Error>, value:Float) -> Void):Void { })
	@:overload(function(min:Float, max:Float, callback:(err:Null<js.lib.Error>, value:Float) -> Void):Void { })
	static function randomInt(max:Float):Float;
	static function randomFillSync<T>(buffer:T, ?offset:Float, ?size:Float):T;
	@:overload(function<T>(buffer:T, offset:Float, callback:(err:Null<js.lib.Error>, buf:T) -> Void):Void { })
	@:overload(function<T>(buffer:T, offset:Float, size:Float, callback:(err:Null<js.lib.Error>, buf:T) -> Void):Void { })
	static function randomFill<T>(buffer:T, callback:(err:Null<js.lib.Error>, buf:T) -> Void):Void;
	@:overload(function(password:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, salt:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, keylen:Float, options:node.crypto.ScryptOptions, callback:(err:Null<js.lib.Error>, derivedKey:global.Buffer) -> Void):Void { })
	static function scrypt(password:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, salt:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, keylen:Float, callback:(err:Null<js.lib.Error>, derivedKey:global.Buffer) -> Void):Void;
	static function scryptSync(password:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, salt:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, keylen:Float, ?options:node.crypto.ScryptOptions):global.Buffer;
	static function publicEncrypt(key:ts.AnyOf5<String, global.Buffer, node.crypto.KeyObject, node.crypto.RsaPublicKey, node.crypto.RsaPrivateKey>, buffer:global.nodejs.ArrayBufferView):global.Buffer;
	static function publicDecrypt(key:ts.AnyOf5<String, global.Buffer, node.crypto.KeyObject, node.crypto.RsaPublicKey, node.crypto.RsaPrivateKey>, buffer:global.nodejs.ArrayBufferView):global.Buffer;
	static function privateDecrypt(private_key:ts.AnyOf4<String, global.Buffer, node.crypto.KeyObject, node.crypto.RsaPrivateKey>, buffer:global.nodejs.ArrayBufferView):global.Buffer;
	static function privateEncrypt(private_key:ts.AnyOf4<String, global.Buffer, node.crypto.KeyObject, node.crypto.RsaPrivateKey>, buffer:global.nodejs.ArrayBufferView):global.Buffer;
	static function getCiphers():Array<String>;
	static function getCurves():Array<String>;
	static function getFips():Int;
	static function getHashes():Array<String>;
	static function createECDH(curve_name:String):node.crypto.ECDH;
	static function timingSafeEqual(a:global.nodejs.ArrayBufferView, b:global.nodejs.ArrayBufferView):Bool;
	@:overload(function(type:String, options:node.crypto.RSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, global.Buffer> { })
	@:overload(function(type:String, options:node.crypto.RSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<global.Buffer, String> { })
	@:overload(function(type:String, options:node.crypto.RSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<global.Buffer, global.Buffer> { })
	@:overload(function(type:String, options:node.crypto.RSAKeyPairKeyObjectOptions):node.crypto.KeyPairKeyObjectResult { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, String> { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, global.Buffer> { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<global.Buffer, String> { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<global.Buffer, global.Buffer> { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairKeyObjectOptions):node.crypto.KeyPairKeyObjectResult { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, String> { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, global.Buffer> { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<global.Buffer, String> { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<global.Buffer, global.Buffer> { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairKeyObjectOptions):node.crypto.KeyPairKeyObjectResult { })
	@:overload(function(type:String, options:node.crypto.ED25519KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, String> { })
	@:overload(function(type:String, options:node.crypto.ED25519KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, global.Buffer> { })
	@:overload(function(type:String, options:node.crypto.ED25519KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<global.Buffer, String> { })
	@:overload(function(type:String, options:node.crypto.ED25519KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<global.Buffer, global.Buffer> { })
	@:overload(function(type:String, ?options:node.crypto.ED25519KeyPairKeyObjectOptions):node.crypto.KeyPairKeyObjectResult { })
	@:overload(function(type:String, options:node.crypto.ED448KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, String> { })
	@:overload(function(type:String, options:node.crypto.ED448KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, global.Buffer> { })
	@:overload(function(type:String, options:node.crypto.ED448KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<global.Buffer, String> { })
	@:overload(function(type:String, options:node.crypto.ED448KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<global.Buffer, global.Buffer> { })
	@:overload(function(type:String, ?options:node.crypto.ED448KeyPairKeyObjectOptions):node.crypto.KeyPairKeyObjectResult { })
	@:overload(function(type:String, options:node.crypto.X25519KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, String> { })
	@:overload(function(type:String, options:node.crypto.X25519KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, global.Buffer> { })
	@:overload(function(type:String, options:node.crypto.X25519KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<global.Buffer, String> { })
	@:overload(function(type:String, options:node.crypto.X25519KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<global.Buffer, global.Buffer> { })
	@:overload(function(type:String, ?options:node.crypto.X25519KeyPairKeyObjectOptions):node.crypto.KeyPairKeyObjectResult { })
	@:overload(function(type:String, options:node.crypto.X448KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, String> { })
	@:overload(function(type:String, options:node.crypto.X448KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, global.Buffer> { })
	@:overload(function(type:String, options:node.crypto.X448KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<global.Buffer, String> { })
	@:overload(function(type:String, options:node.crypto.X448KeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<global.Buffer, global.Buffer> { })
	@:overload(function(type:String, ?options:node.crypto.X448KeyPairKeyObjectOptions):node.crypto.KeyPairKeyObjectResult { })
	static function generateKeyPairSync(type:String, options:node.crypto.RSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, String>;
	@:overload(function(type:String, options:node.crypto.RSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.RSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.RSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.RSAKeyPairKeyObjectOptions, callback:(err:Null<js.lib.Error>, publicKey:node.crypto.KeyObject, privateKey:node.crypto.KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairKeyObjectOptions, callback:(err:Null<js.lib.Error>, publicKey:node.crypto.KeyObject, privateKey:node.crypto.KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairKeyObjectOptions, callback:(err:Null<js.lib.Error>, publicKey:node.crypto.KeyObject, privateKey:node.crypto.KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ED25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ED25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ED25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ED25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:Null<node.crypto.ED25519KeyPairKeyObjectOptions>, callback:(err:Null<js.lib.Error>, publicKey:node.crypto.KeyObject, privateKey:node.crypto.KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ED448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ED448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ED448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ED448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:Null<node.crypto.ED448KeyPairKeyObjectOptions>, callback:(err:Null<js.lib.Error>, publicKey:node.crypto.KeyObject, privateKey:node.crypto.KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.X25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.X25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.X25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.X25519KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:Null<node.crypto.X25519KeyPairKeyObjectOptions>, callback:(err:Null<js.lib.Error>, publicKey:node.crypto.KeyObject, privateKey:node.crypto.KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.X448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.X448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.X448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.X448KeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:Null<node.crypto.X448KeyPairKeyObjectOptions>, callback:(err:Null<js.lib.Error>, publicKey:node.crypto.KeyObject, privateKey:node.crypto.KeyObject) -> Void):Void { })
	static function generateKeyPair(type:String, options:node.crypto.RSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void;
	/**
		Calculates and returns the signature for `data` using the given private key and
		algorithm. If `algorithm` is `null` or `undefined`, then the algorithm is
		dependent upon the key type (especially Ed25519 and Ed448).
		
		If `key` is not a [`KeyObject`][], this function behaves as if `key` had been
		passed to [`crypto.createPrivateKey()`][].
	**/
	static function sign(algorithm:Null<String>, data:global.nodejs.ArrayBufferView, key:ts.AnyOf5<String, global.Buffer, node.crypto.KeyObject, node.crypto.SignKeyObjectInput, node.crypto.SignPrivateKeyInput>):global.Buffer;
	/**
		Calculates and returns the signature for `data` using the given private key and
		algorithm. If `algorithm` is `null` or `undefined`, then the algorithm is
		dependent upon the key type (especially Ed25519 and Ed448).
		
		If `key` is not a [`KeyObject`][], this function behaves as if `key` had been
		passed to [`crypto.createPublicKey()`][].
	**/
	static function verify(algorithm:Null<String>, data:global.nodejs.ArrayBufferView, key:ts.AnyOf5<String, global.Buffer, node.crypto.KeyObject, node.crypto.VerifyKeyObjectInput, node.crypto.VerifyPublicKeyInput>, signature:global.nodejs.ArrayBufferView):Bool;
	/**
		Computes the Diffie-Hellman secret based on a privateKey and a publicKey.
		Both keys must have the same asymmetricKeyType, which must be one of
		'dh' (for Diffie-Hellman), 'ec' (for ECDH), 'x448', or 'x25519' (for ECDH-ES).
	**/
	static function diffieHellman(options:{ var privateKey : node.crypto.KeyObject; var publicKey : node.crypto.KeyObject; }):global.Buffer;
	static final fips : Bool;
	static final DEFAULT_ENCODING : global.BufferEncoding;
}