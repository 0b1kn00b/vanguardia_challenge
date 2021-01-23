package node.child_process;

typedef ChildProcessWithoutNullStreams = {
	var stdin : node.stream.Writable;
	var stdout : node.stream.Readable;
	var stderr : node.stream.Readable;
	final stdio : ts.Tuple5<node.stream.Writable, node.stream.Readable, node.stream.Readable, Null<ts.AnyOf2<node.stream.Readable, node.stream.Writable>>, Null<ts.AnyOf2<node.stream.Readable, node.stream.Writable>>>;
	@:optional
	final channel : node.stream.Pipe;
	final killed : Bool;
	final pid : Float;
	final connected : Bool;
	final exitCode : Null<Float>;
	final signalCode : Null<global.nodejs.Signals>;
	final spawnargs : Array<String>;
	final spawnfile : String;
	function kill(?signal:ts.AnyOf2<Float, String>):Bool;
	@:overload(function(message:Serializable, ?sendHandle:SendHandle, ?callback:(error:Null<js.lib.Error>) -> Void):Bool { })
	@:overload(function(message:Serializable, ?sendHandle:SendHandle, ?options:MessageOptions, ?callback:(error:Null<js.lib.Error>) -> Void):Bool { })
	function send(message:Serializable, ?callback:(error:Null<js.lib.Error>) -> Void):Bool;
	function disconnect():Void;
	function unref():Void;
	function ref():Void;
	/**
		events.EventEmitter
		1. close
		2. disconnect
		3. error
		4. exit
		5. message
	**/
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcessWithoutNullStreams { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessWithoutNullStreams;
	@:overload(function(event:String, code:Null<Float>, signal:Null<global.nodejs.Signals>):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String, code:Null<Float>, signal:Null<global.nodejs.Signals>):Bool { })
	@:overload(function(event:String, message:Serializable, sendHandle:SendHandle):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcessWithoutNullStreams { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessWithoutNullStreams;
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcessWithoutNullStreams { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessWithoutNullStreams;
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcessWithoutNullStreams { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessWithoutNullStreams;
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessWithoutNullStreams { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcessWithoutNullStreams { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessWithoutNullStreams;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessWithoutNullStreams;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessWithoutNullStreams;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):ChildProcessWithoutNullStreams;
	function setMaxListeners(n:Float):ChildProcessWithoutNullStreams;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function listenerCount(event:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
};