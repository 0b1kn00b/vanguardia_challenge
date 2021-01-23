package node.fs;

/**
	Asynchronous link(2) - Create a new link (also known as a hard link) to an existing file.
**/
@:jsRequire("fs", "link") @valueModuleOnly extern class Link {
	/**
		Asynchronous link(2) - Create a new link (also known as a hard link) to an existing file.
	**/
	@:selfCall
	static function call(existingPath:PathLike, newPath:PathLike, callback:NoParamCallback):Void;
}