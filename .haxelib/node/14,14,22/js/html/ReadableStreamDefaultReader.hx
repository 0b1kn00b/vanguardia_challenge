package js.html;

typedef ReadableStreamDefaultReader<R> = {
	final closed : js.lib.Promise<Void>;
	function cancel(?reason:Dynamic):js.lib.Promise<Void>;
	function read():js.lib.Promise<ReadableStreamReadResult<R>>;
	function releaseLock():Void;
};