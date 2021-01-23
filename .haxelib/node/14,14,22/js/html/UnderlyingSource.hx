package js.html;

typedef UnderlyingSource<R> = {
	@:optional
	dynamic function cancel(reason:Dynamic):ts.AnyOf2<Void, js.lib.PromiseLike<Void>>;
	@:optional
	dynamic function pull(controller:ReadableStreamDefaultController<R>):ts.AnyOf2<Void, js.lib.PromiseLike<Void>>;
	@:optional
	dynamic function start(controller:ReadableStreamDefaultController<R>):ts.AnyOf2<Void, js.lib.PromiseLike<Void>>;
	@:optional
	var type : Any;
};