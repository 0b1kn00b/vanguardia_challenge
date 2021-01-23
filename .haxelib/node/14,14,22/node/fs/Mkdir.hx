package node.fs;

/**
	Asynchronous mkdir(2) - create a directory.
	
	Asynchronous mkdir(2) - create a directory.
	
	Asynchronous mkdir(2) - create a directory.
	
	Asynchronous mkdir(2) - create a directory with a mode of `0o777`.
**/
@:jsRequire("fs", "mkdir") @valueModuleOnly extern class Mkdir {
	/**
		Asynchronous mkdir(2) - create a directory.
	**/
	@:overload(function(path:PathLike, options:Null<ts.AnyOf3<String, Float, Dynamic>>, callback:NoParamCallback):Void { })
	@:overload(function(path:PathLike, options:Null<ts.AnyOf3<String, Float, MakeDirectoryOptions>>, callback:(err:Null<global.nodejs.ErrnoException>, path:Null<String>) -> Void):Void { })
	@:overload(function(path:PathLike, callback:NoParamCallback):Void { })
	@:selfCall
	static function call(path:PathLike, options:Dynamic, callback:(err:Null<global.nodejs.ErrnoException>, path:String) -> Void):Void;
}