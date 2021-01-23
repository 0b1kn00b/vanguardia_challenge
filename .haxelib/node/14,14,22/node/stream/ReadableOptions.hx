package node.stream;

typedef ReadableOptions = {
	@:optional
	var highWaterMark : Float;
	@:optional
	var encoding : global.BufferEncoding;
	@:optional
	var objectMode : Bool;
	@:optional
	function read(size:Float):Void;
	@:optional
	function destroy(error:Null<js.lib.Error>, callback:(error:Null<js.lib.Error>) -> Void):Void;
	@:optional
	var autoDestroy : Bool;
};