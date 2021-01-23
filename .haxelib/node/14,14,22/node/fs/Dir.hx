package node.fs;

/**
	A class representing a directory stream.
**/
@:jsRequire("fs", "Dir") extern class Dir {
	function new();
	final path : String;
	/**
		Asynchronously close the directory's underlying resource handle.
		Subsequent reads will result in errors.
	**/
	@:overload(function(cb:NoParamCallback):Void { })
	function close():js.lib.Promise<Void>;
	/**
		Synchronously close the directory's underlying resource handle.
		Subsequent reads will result in errors.
	**/
	function closeSync():Void;
	/**
		Asynchronously read the next directory entry via `readdir(3)` as an `Dirent`.
		After the read is completed, a value is returned that will be resolved with an `Dirent`, or `null` if there are no more directory entries to read.
		Directory entries returned by this function are in no particular order as provided by the operating system's underlying directory mechanisms.
	**/
	@:overload(function(cb:(err:Null<global.nodejs.ErrnoException>, dirEnt:Null<Dirent>) -> Void):Void { })
	function read():js.lib.Promise<Null<Dirent>>;
	/**
		Synchronously read the next directory entry via `readdir(3)` as a `Dirent`.
		If there are no more directory entries to read, null will be returned.
		Directory entries returned by this function are in no particular order as provided by the operating system's underlying directory mechanisms.
	**/
	function readSync():Null<Dirent>;
	static var prototype : Dir;
}