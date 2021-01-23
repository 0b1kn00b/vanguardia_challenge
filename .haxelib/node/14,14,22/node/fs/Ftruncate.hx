package node.fs;

/**
	Asynchronous ftruncate(2) - Truncate a file to a specified length.
	
	Asynchronous ftruncate(2) - Truncate a file to a specified length.
**/
@:jsRequire("fs", "ftruncate") @valueModuleOnly extern class Ftruncate {
	/**
		Asynchronous ftruncate(2) - Truncate a file to a specified length.
	**/
	@:overload(function(fd:Float, callback:NoParamCallback):Void { })
	@:selfCall
	static function call(fd:Float, len:Null<Float>, callback:NoParamCallback):Void;
}