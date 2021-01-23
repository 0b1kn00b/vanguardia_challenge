package node.fs;

/**
	Asynchronously append data to a file, creating the file if it does not exist.
	
	Asynchronously append data to a file, creating the file if it does not exist.
**/
@:jsRequire("fs", "appendFile") @valueModuleOnly extern class AppendFile {
	/**
		Asynchronously append data to a file, creating the file if it does not exist.
	**/
	@:overload(function(file:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, data:ts.AnyOf2<String, js.lib.Uint8Array>, callback:NoParamCallback):Void { })
	@:selfCall
	static function call(file:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, data:ts.AnyOf2<String, js.lib.Uint8Array>, options:WriteFileOptions, callback:NoParamCallback):Void;
}