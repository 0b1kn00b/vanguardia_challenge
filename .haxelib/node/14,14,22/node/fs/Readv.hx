package node.fs;

@:jsRequire("fs", "readv") @valueModuleOnly extern class Readv {
	@:overload(function(fd:Float, buffers:haxe.ds.ReadOnlyArray<global.nodejs.ArrayBufferView>, position:Float, cb:(err:Null<global.nodejs.ErrnoException>, bytesRead:Float, buffers:Array<global.nodejs.ArrayBufferView>) -> Void):Void { })
	@:selfCall
	static function call(fd:Float, buffers:haxe.ds.ReadOnlyArray<global.nodejs.ArrayBufferView>, cb:(err:Null<global.nodejs.ErrnoException>, bytesRead:Float, buffers:Array<global.nodejs.ArrayBufferView>) -> Void):Void;
}