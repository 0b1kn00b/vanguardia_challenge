package global;

/**
	Raw data is stored in instances of the Buffer class.
	A Buffer is similar to an array of integers but corresponds to a raw memory allocation outside the V8 heap.  A Buffer cannot be resized.
	Valid string encodings: 'ascii'|'utf8'|'utf16le'|'ucs2'(alias of 'utf16le')|'base64'|'binary'(deprecated)|'hex'
**/
@:native("Buffer") extern class Buffer extends js.lib.Uint8Array {
	/**
		Allocates a new buffer containing the given {str}.
	**/
	@:overload(function(size:Float):Buffer { })
	@:overload(function(array:js.lib.Uint8Array):Buffer { })
	@:overload(function(arrayBuffer:ts.AnyOf2<js.lib.ArrayBuffer, js.lib.SharedArrayBuffer>):Buffer { })
	@:overload(function(array:haxe.ds.ReadOnlyArray<Dynamic>):Buffer { })
	@:overload(function(buffer:Buffer):Buffer { })
	function new(str:String, ?encoding:BufferEncoding);
	@:overload(function(string:String, offset:Float, ?encoding:BufferEncoding):Float { })
	@:overload(function(string:String, offset:Float, length:Float, ?encoding:BufferEncoding):Float { })
	function write(string:String, ?encoding:BufferEncoding):Float;
	/**
		Returns a string representation of an array.
	**/
	function toString(?encoding:BufferEncoding, ?start:Float, ?end:Float):String;
	function toJSON():{
		var type : String;
		var data : Array<Float>;
	};
	function equals(otherBuffer:js.lib.Uint8Array):Bool;
	function compare(otherBuffer:js.lib.Uint8Array, ?targetStart:Float, ?targetEnd:Float, ?sourceStart:Float, ?sourceEnd:Float):Float;
	function copy(targetBuffer:js.lib.Uint8Array, ?targetStart:Float, ?sourceStart:Float, ?sourceEnd:Float):Float;
	/**
		Returns a new `Buffer` that references **the same memory as the original**, but offset and cropped by the start and end indices.
		
		This method is incompatible with `Uint8Array#slice()`, which returns a copy of the original memory.
	**/
	function slice(?begin:Float, ?end:Float):Buffer;
	/**
		Returns a new `Buffer` that references **the same memory as the original**, but offset and cropped by the start and end indices.
		
		This method is compatible with `Uint8Array#subarray()`.
	**/
	function subarray(?begin:Float, ?end:Float):Buffer;
	function writeBigInt64BE(value:js.lib.BigInt, ?offset:Float):Float;
	function writeBigInt64LE(value:js.lib.BigInt, ?offset:Float):Float;
	function writeBigUInt64BE(value:js.lib.BigInt, ?offset:Float):Float;
	function writeBigUInt64LE(value:js.lib.BigInt, ?offset:Float):Float;
	function writeUIntLE(value:Float, offset:Float, byteLength:Float):Float;
	function writeUIntBE(value:Float, offset:Float, byteLength:Float):Float;
	function writeIntLE(value:Float, offset:Float, byteLength:Float):Float;
	function writeIntBE(value:Float, offset:Float, byteLength:Float):Float;
	function readBigUInt64BE(?offset:Float):js.lib.BigInt;
	function readBigUInt64LE(?offset:Float):js.lib.BigInt;
	function readBigInt64BE(?offset:Float):js.lib.BigInt;
	function readBigInt64LE(?offset:Float):js.lib.BigInt;
	function readUIntLE(offset:Float, byteLength:Float):Float;
	function readUIntBE(offset:Float, byteLength:Float):Float;
	function readIntLE(offset:Float, byteLength:Float):Float;
	function readIntBE(offset:Float, byteLength:Float):Float;
	function readUInt8(?offset:Float):Float;
	function readUInt16LE(?offset:Float):Float;
	function readUInt16BE(?offset:Float):Float;
	function readUInt32LE(?offset:Float):Float;
	function readUInt32BE(?offset:Float):Float;
	function readInt8(?offset:Float):Float;
	function readInt16LE(?offset:Float):Float;
	function readInt16BE(?offset:Float):Float;
	function readInt32LE(?offset:Float):Float;
	function readInt32BE(?offset:Float):Float;
	function readFloatLE(?offset:Float):Float;
	function readFloatBE(?offset:Float):Float;
	function readDoubleLE(?offset:Float):Float;
	function readDoubleBE(?offset:Float):Float;
	/**
		Reverses the elements in an Array.
	**/
	function reverse():Buffer;
	function swap16():Buffer;
	function swap32():Buffer;
	function swap64():Buffer;
	function writeUInt8(value:Float, ?offset:Float):Float;
	function writeUInt16LE(value:Float, ?offset:Float):Float;
	function writeUInt16BE(value:Float, ?offset:Float):Float;
	function writeUInt32LE(value:Float, ?offset:Float):Float;
	function writeUInt32BE(value:Float, ?offset:Float):Float;
	function writeInt8(value:Float, ?offset:Float):Float;
	function writeInt16LE(value:Float, ?offset:Float):Float;
	function writeInt16BE(value:Float, ?offset:Float):Float;
	function writeInt32LE(value:Float, ?offset:Float):Float;
	function writeInt32BE(value:Float, ?offset:Float):Float;
	function writeFloatLE(value:Float, ?offset:Float):Float;
	function writeFloatBE(value:Float, ?offset:Float):Float;
	function writeDoubleLE(value:Float, ?offset:Float):Float;
	function writeDoubleBE(value:Float, ?offset:Float):Float;
	/**
		Returns the this object after filling the section identified by start and end with value
	**/
	function fill(value:ts.AnyOf3<String, Float, js.lib.Uint8Array>, ?offset:Float, ?end:Float, ?encoding:BufferEncoding):Buffer;
	/**
		Returns the index of the first occurrence of a value in an array.
	**/
	function indexOf(value:ts.AnyOf3<String, Float, js.lib.Uint8Array>, ?byteOffset:Float, ?encoding:BufferEncoding):Float;
	/**
		Returns the index of the last occurrence of a value in an array.
	**/
	function lastIndexOf(value:ts.AnyOf3<String, Float, js.lib.Uint8Array>, ?byteOffset:Float, ?encoding:BufferEncoding):Float;
	/**
		Determines whether an array includes a certain element, returning true or false as appropriate.
	**/
	function includes(value:ts.AnyOf3<String, Float, Buffer>, ?byteOffset:Float, ?encoding:BufferEncoding):Bool;
	/**
		Returns the this object after copying a section of the array identified by start and end
		to the same array starting at position target
	**/
	function copyWithin(target:Float, start:Float, ?end:Float):Buffer;
	/**
		Sorts an array.
	**/
	function sort(?compareFn:(a:Float, b:Float) -> Float):Buffer;
	static var prototype : Buffer;
	/**
		When passed a reference to the .buffer property of a TypedArray instance,
		the newly created Buffer will share the same allocated memory as the TypedArray.
		The optional {byteOffset} and {length} arguments specify a memory range
		within the {arrayBuffer} that will be shared by the Buffer.
		
		Creates a new Buffer using the passed {data}
		
		Creates a new Buffer containing the given JavaScript string {str}.
		If provided, the {encoding} parameter identifies the character encoding.
		If not provided, {encoding} defaults to 'utf8'.
	**/
	@:overload(function(data:ts.AnyOf2<js.lib.Uint8Array, haxe.ds.ReadOnlyArray<Float>>):Buffer { })
	@:overload(function(data:WithImplicitCoercion<ts.AnyOf3<String, js.lib.Uint8Array, haxe.ds.ReadOnlyArray<Float>>>):Buffer { })
	@:overload(function(str:ts.AnyOf3<String, { function valueOf():String; }, { }>, ?encoding:BufferEncoding):Buffer { })
	static function from(arrayBuffer:WithImplicitCoercion<ts.AnyOf2<js.lib.ArrayBuffer, js.lib.SharedArrayBuffer>>, ?byteOffset:Float, ?length:Float):Buffer;
	/**
		Creates a new Buffer using the passed {data}
	**/
	static function of(items:haxe.extern.Rest<Float>):Buffer;
	/**
		Returns true if {obj} is a Buffer
	**/
	static function isBuffer(obj:Dynamic):Bool;
	/**
		Returns true if {encoding} is a valid encoding argument.
		Valid string encodings in Node 0.12: 'ascii'|'utf8'|'utf16le'|'ucs2'(alias of 'utf16le')|'base64'|'binary'(deprecated)|'hex'
	**/
	static function isEncoding(encoding:String):Bool;
	/**
		Gives the actual byte length of a string. encoding defaults to 'utf8'.
		This is not the same as String.prototype.length since that returns the number of characters in a string.
	**/
	static function byteLength(string:ts.AnyOf15<String, js.lib.Uint8Array, js.lib.ArrayBuffer, js.lib.SharedArrayBuffer, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, ?encoding:BufferEncoding):Float;
	/**
		Returns a buffer which is the result of concatenating all the buffers in the list together.
		
		If the list has no items, or if the totalLength is 0, then it returns a zero-length buffer.
		If the list has exactly one item, then the first item of the list is returned.
		If the list has more than one item, then a new Buffer is created.
	**/
	static function concat(list:haxe.ds.ReadOnlyArray<js.lib.Uint8Array>, ?totalLength:Float):Buffer;
	/**
		The same as buf1.compare(buf2).
	**/
	@:native("compare")
	static function compare_(buf1:js.lib.Uint8Array, buf2:js.lib.Uint8Array):Float;
	/**
		Allocates a new buffer of {size} octets.
	**/
	static function alloc(size:Float, ?fill:ts.AnyOf3<String, Float, Buffer>, ?encoding:BufferEncoding):Buffer;
	/**
		Allocates a new buffer of {size} octets, leaving memory not initialized, so the contents
		of the newly created Buffer are unknown and may contain sensitive data.
	**/
	static function allocUnsafe(size:Float):Buffer;
	/**
		Allocates a new non-pooled buffer of {size} octets, leaving memory not initialized, so the contents
		of the newly created Buffer are unknown and may contain sensitive data.
	**/
	static function allocUnsafeSlow(size:Float):Buffer;
	/**
		This is the number of bytes used to determine the size of pre-allocated, internal Buffer instances used for pooling. This value may be modified.
	**/
	static var poolSize : Float;
}