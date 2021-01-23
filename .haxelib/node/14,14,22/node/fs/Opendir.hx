package node.fs;

@:jsRequire("fs", "opendir") @valueModuleOnly extern class Opendir {
	@:overload(function(path:String, options:OpenDirOptions, cb:(err:Null<global.nodejs.ErrnoException>, dir:Dir) -> Void):Void { })
	@:selfCall
	static function call(path:String, cb:(err:Null<global.nodejs.ErrnoException>, dir:Dir) -> Void):Void;
}