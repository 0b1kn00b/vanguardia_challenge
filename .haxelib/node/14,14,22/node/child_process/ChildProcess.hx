package node.child_process;

typedef ChildProcess = {
	var stdin : Null<node.stream.Writable>;
	var stdout : Null<node.stream.Readable>;
	var stderr : Null<node.stream.Readable>;
	@:optional
	final channel : node.stream.Pipe;
	final stdio : ts.Tuple5<Null<node.stream.Writable>, Null<node.stream.Readable>, Null<node.stream.Readable>, Null<ts.AnyOf2<node.stream.Readable, node.stream.Writable>>, Null<ts.AnyOf2<node.stream.Readable, node.stream.Writable>>>;
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
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:() -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcess { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcess;
	@:overload(function(event:String, code:Null<Float>, signal:Null<global.nodejs.Signals>):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String, code:Null<Float>, signal:Null<global.nodejs.Signals>):Bool { })
	@:overload(function(event:String, message:Serializable, sendHandle:SendHandle):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:() -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcess { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcess;
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:() -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcess { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcess;
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:() -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcess { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcess;
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:() -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<global.nodejs.Signals>) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(message:Serializable, sendHandle:SendHandle) -> Void):ChildProcess { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcess;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcess;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcess;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):ChildProcess;
	function setMaxListeners(n:Float):ChildProcess;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function listenerCount(event:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
};