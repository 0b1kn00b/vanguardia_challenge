package node.fs;

/**
	Asynchronously tests a user's permissions for the file specified by path.
	
	Asynchronously tests a user's permissions for the file specified by path.
**/
@:jsRequire("fs", "access") @valueModuleOnly extern class Access {
	/**
		Asynchronously tests a user's permissions for the file specified by path.
	**/
	@:overload(function(path:PathLike, callback:NoParamCallback):Void { })
	@:selfCall
	static function call(path:PathLike, mode:Null<Float>, callback:NoParamCallback):Void;
}