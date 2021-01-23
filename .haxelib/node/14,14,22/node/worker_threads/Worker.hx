package node.worker_threads;

@:jsRequire("worker_threads", "Worker") extern class Worker extends node.Events {
	function new(filename:ts.AnyOf2<String, node.url.URL>, ?options:WorkerOptions);
	final stdin : Null<node.stream.Writable>;
	final stdout : node.stream.Readable;
	final stderr : node.stream.Readable;
	final threadId : Float;
	@:optional
	final resourceLimits : ResourceLimits;
	function postMessage(value:Dynamic, ?transferList:haxe.ds.ReadOnlyArray<TransferListItem>):Void;
	function ref():Void;
	function unref():Void;
	/**
		Stop all JavaScript execution in the worker thread as soon as possible.
		Returns a Promise for the exit code that is fulfilled when the `exit` event is emitted.
	**/
	function terminate():js.lib.Promise<Float>;
	/**
		Returns a readable stream for a V8 snapshot of the current state of the Worker.
		See [`v8.getHeapSnapshot()`][] for more details.
		
		If the Worker thread is no longer running, which may occur before the
		[`'exit'` event][] is emitted, the returned `Promise` will be rejected
		immediately with an [`ERR_WORKER_NOT_RUNNING`][] error
	**/
	function getHeapSnapshot():js.lib.Promise<node.stream.Readable>;
	@:overload(function(event:String, listener:(exitCode:Float) -> Void):Worker { })
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):Worker { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker { })
	function addListener(event:String, listener:(err:js.lib.Error) -> Void):Worker;
	@:overload(function(event:String, exitCode:Float):Bool { })
	@:overload(function(event:String, value:Dynamic):Bool { })
	@:overload(function(event:String, error:js.lib.Error):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool { })
	function emit(event:String, err:js.lib.Error):Bool;
	@:overload(function(event:String, listener:(exitCode:Float) -> Void):Worker { })
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):Worker { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker { })
	function on(event:String, listener:(err:js.lib.Error) -> Void):Worker;
	@:overload(function(event:String, listener:(exitCode:Float) -> Void):Worker { })
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):Worker { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker { })
	function once(event:String, listener:(err:js.lib.Error) -> Void):Worker;
	@:overload(function(event:String, listener:(exitCode:Float) -> Void):Worker { })
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):Worker { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker { })
	function prependListener(event:String, listener:(err:js.lib.Error) -> Void):Worker;
	@:overload(function(event:String, listener:(exitCode:Float) -> Void):Worker { })
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):Worker { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker { })
	function prependOnceListener(event:String, listener:(err:js.lib.Error) -> Void):Worker;
	@:overload(function(event:String, listener:(exitCode:Float) -> Void):Worker { })
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):Worker { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker { })
	function removeListener(event:String, listener:(err:js.lib.Error) -> Void):Worker;
	@:overload(function(event:String, listener:(exitCode:Float) -> Void):Worker { })
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):Worker { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker { })
	function off(event:String, listener:(err:js.lib.Error) -> Void):Worker;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Worker;
	function setMaxListeners(n:Float):Worker;
	static var prototype : Worker;
}