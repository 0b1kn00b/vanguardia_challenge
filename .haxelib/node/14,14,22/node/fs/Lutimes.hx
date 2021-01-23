package node.fs;

/**
	Changes the access and modification times of a file in the same way as `fs.utimes()`,
	with the difference that if the path refers to a symbolic link, then the link is not
	dereferenced: instead, the timestamps of the symbolic link itself are changed.
**/
@:jsRequire("fs", "lutimes") @valueModuleOnly extern class Lutimes {
	/**
		Changes the access and modification times of a file in the same way as `fs.utimes()`,
		with the difference that if the path refers to a symbolic link, then the link is not
		dereferenced: instead, the timestamps of the symbolic link itself are changed.
	**/
	@:selfCall
	static function call(path:PathLike, atime:ts.AnyOf3<String, Float, js.lib.Date>, mtime:ts.AnyOf3<String, Float, js.lib.Date>, callback:NoParamCallback):Void;
}