package node.child_process;

typedef ChildProcessByStdio<I, O, E> = {
	var stdin : I;
	var stdout : O;
	var stderr : E;
	final stdio : ts.Tuple5<I, O, E, Null<ts.AnyOf2<node.stream.Readable, node.stream.Writable>>, Null<ts.AnyOf2<node.stream.Readable, node.stream.Writable>>>;
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
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcessByStdio<I, O, E> { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessByStdio<I, O, E>;
	@:overload(function(event:String, code:Null<Float>, signal:Null<global.nodejs.Signals>):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String, code:Null<Float>, signal:Null<global.nodejs.Signals>):Bool { })
	@:overload(function(event:String, message:Serializable, sendHandle:SendHandle):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcessByStdio<I, O, E> { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessByStdio<I, O, E>;
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcessByStdio<I, O, E> { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessByStdio<I, O, E>;
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcessByStdio<I, O, E> { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessByStdio<I, O, E>;
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:() -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcessByStdio<I, O, E> { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcessByStdio<I, O, E> { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessByStdio<I, O, E>;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessByStdio<I, O, E>;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcessByStdio<I, O, E>;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):ChildProcessByStdio<I, O, E>;
	function setMaxListeners(n:Float):ChildProcessByStdio<I, O, E>;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function listenerCount(event:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
};