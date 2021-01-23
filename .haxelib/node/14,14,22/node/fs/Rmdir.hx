package node.fs;

/**
	Asynchronous rmdir(2) - delete a directory.
**/
@:jsRequire("fs", "rmdir") @valueModuleOnly extern class Rmdir {
	/**
		Asynchronous rmdir(2) - delete a directory.
	**/
	@:overload(function(path:PathLike, options:RmDirOptions, callback:NoParamCallback):Void { })
	@:selfCall
	static function call(path:PathLike, callback:NoParamCallback):Void;
}