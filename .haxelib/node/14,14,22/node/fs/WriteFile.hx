package node.fs;

/**
	Asynchronously writes data to a file, replacing the file if it already exists.
	
	Asynchronously writes data to a file, replacing the file if it already exists.
**/
@:jsRequire("fs", "writeFile") @valueModuleOnly extern class WriteFile {
	/**
		Asynchronously writes data to a file, replacing the file if it already exists.
	**/
	@:overload(function(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, data:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, callback:NoParamCallback):Void { })
	@:selfCall
	static function call(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, data:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, options:WriteFileOptions, callback:NoParamCallback):Void;
}