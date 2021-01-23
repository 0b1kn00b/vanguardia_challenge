package node.async_hooks;

/**
	The class AsyncResource was designed to be extended by the embedder's async resources.
	Using this users can easily trigger the lifetime events of their own resources.
**/
@:jsRequire("async_hooks", "AsyncResource") extern class AsyncResource {
	/**
		AsyncResource() is meant to be extended. Instantiating a
		new AsyncResource() also triggers init. If triggerAsyncId is omitted then
		async_hook.executionAsyncId() is used.
	**/
	function new(type:String, ?triggerAsyncId:ts.AnyOf2<Float, AsyncResourceOptions>);
	/**
		Binds the given function to execute to this `AsyncResource`'s scope.
	**/
	function bind<Func>(fn:Func):Dynamic;
	/**
		Call the provided function with the provided arguments in the
		execution context of the async resource. This will establish the
		context, trigger the AsyncHooks before callbacks, call the function,
		trigger the AsyncHooks after callbacks, and then restore the original
		execution context.
	**/
	function runInAsyncScope<This, Result>(fn:(args:haxe.extern.Rest<Dynamic>) -> Result, ?thisArg:This, args:haxe.extern.Rest<Dynamic>):Result;
	/**
		Call AsyncHooks destroy callbacks.
	**/
	function emitDestroy():Void;
	function asyncId():Float;
	function triggerAsyncId():Float;
	static var prototype : AsyncResource;
	/**
		Binds the given function to the current execution context.
	**/
	@:native("bind")
	static function bind_<Func>(fn:Func, ?type:String):Dynamic;
}