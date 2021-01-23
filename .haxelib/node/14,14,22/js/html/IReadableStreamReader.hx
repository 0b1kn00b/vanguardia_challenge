package js.html;

typedef IReadableStreamReader<R> = {
	function cancel():js.lib.Promise<Void>;
	function read():js.lib.Promise<ReadableStreamReadResult<R>>;
	function releaseLock():Void;
};