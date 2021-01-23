package node;

@:jsRequire("readline") @valueModuleOnly extern class Readline {
	@:overload(function(options:node.readline.ReadLineOptions):node.readline.Interface { })
	static function createInterface(input:global.nodejs.ReadableStream, ?output:global.nodejs.WritableStream, ?completer:ts.AnyOf2<node.readline.Completer, node.readline.AsyncCompleter>, ?terminal:Bool):node.readline.Interface;
	static function emitKeypressEvents(stream:global.nodejs.ReadableStream, ?readlineInterface:node.readline.Interface):Void;
	/**
		Clears the current line of this WriteStream in a direction identified by `dir`.
	**/
	static function clearLine(stream:global.nodejs.WritableStream, dir:node.tty.Direction, ?callback:() -> Void):Bool;
	/**
		Clears this `WriteStream` from the current cursor down.
	**/
	static function clearScreenDown(stream:global.nodejs.WritableStream, ?callback:() -> Void):Bool;
	/**
		Moves this WriteStream's cursor to the specified position.
	**/
	static function cursorTo(stream:global.nodejs.WritableStream, x:Float, ?y:Float, ?callback:() -> Void):Bool;
	/**
		Moves this WriteStream's cursor relative to its current position.
	**/
	static function moveCursor(stream:global.nodejs.WritableStream, dx:Float, dy:Float, ?callback:() -> Void):Bool;
}