package js.html;

typedef UnderlyingByteSource = {
	@:optional
	var autoAllocateChunkSize : Float;
	@:optional
	dynamic function cancel(reason:Dynamic):ts.AnyOf2<Void, js.lib.PromiseLike<Void>>;
	@:optional
	dynamic function pull(controller:ReadableByteStreamController):ts.AnyOf2<Void, js.lib.PromiseLike<Void>>;
	@:optional
	dynamic function start(controller:ReadableByteStreamController):ts.AnyOf2<Void, js.lib.PromiseLike<Void>>;
	var type : String;
};