package node.fs;

/**
	Asynchronous truncate(2) - Truncate a file to a specified length.
	
	Asynchronous truncate(2) - Truncate a file to a specified length.
**/
@:jsRequire("fs", "truncate") @valueModuleOnly extern class Truncate {
	/**
		Asynchronous truncate(2) - Truncate a file to a specified length.
	**/
	@:overload(function(path:PathLike, callback:NoParamCallback):Void { })
	@:selfCall
	static function call(path:PathLike, len:Null<Float>, callback:NoParamCallback):Void;
}