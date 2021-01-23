package node;

/**
	Async Hooks module: https://nodejs.org/api/async_hooks.html
**/
@:jsRequire("async_hooks") @valueModuleOnly extern class Async_hooks {
	/**
		Returns the asyncId of the current execution context.
	**/
	static function executionAsyncId():Float;
	/**
		The resource representing the current execution.
		  Useful to store data within the resource.
		
		Resource objects returned by `executionAsyncResource()` are most often internal
		Node.js handle objects with undocumented APIs. Using any functions or properties
		on the object is likely to crash your application and should be avoided.
		
		Using `executionAsyncResource()` in the top-level execution context will
		return an empty object as there is no handle or request object to use,
		but having an object representing the top-level can be helpful.
	**/
	static function executionAsyncResource():Dynamic;
	/**
		Returns the ID of the resource responsible for calling the callback that is currently being executed.
	**/
	static function triggerAsyncId():Float;
	/**
		Registers functions to be called for different lifetime events of each async operation.
	**/
	static function createHook(options:node.async_hooks.HookCallbacks):node.async_hooks.AsyncHook;
}