package node.fs;

/**
	Asynchronously removes files and directories (modeled on the standard POSIX `rm` utility).
**/
@:jsRequire("fs", "rm") @valueModuleOnly extern class Rm {
	/**
		Asynchronously removes files and directories (modeled on the standard POSIX `rm` utility).
	**/
	@:overload(function(path:PathLike, options:RmOptions, callback:NoParamCallback):Void { })
	@:selfCall
	static function call(path:PathLike, callback:NoParamCallback):Void;
}