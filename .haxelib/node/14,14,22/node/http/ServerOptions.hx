package node.http;

typedef ServerOptions = {
	@:optional
	var IncomingMessage : {
		var prototype : IncomingMessage;
		/**
			A utility method for creating Readable Streams out of iterators.
		**/
		function from(iterable:ts.AnyOf2<Iterable<Dynamic>, js.lib.AsyncIterable<Dynamic>>, ?options:node.stream.ReadableOptions):node.stream.Readable;
		@:overload(function(stream:ts.AnyOf3<global.nodejs.ReadableStream, global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void { })
		function finished(stream:ts.AnyOf3<global.nodejs.ReadableStream, global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, options:node.stream.FinishedOptions, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void;
		@:overload(function<T>(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:T, ?callback:(err:Null<global.nodejs.ErrnoException>) -> Void):T { })
		@:overload(function<T>(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:global.nodejs.ReadWriteStream, stream4:T, ?callback:(err:Null<global.nodejs.ErrnoException>) -> Void):T { })
		@:overload(function<T>(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:global.nodejs.ReadWriteStream, stream4:global.nodejs.ReadWriteStream, stream5:T, ?callback:(err:Null<global.nodejs.ErrnoException>) -> Void):T { })
		@:overload(function(streams:haxe.ds.ReadOnlyArray<ts.AnyOf3<global.nodejs.ReadableStream, global.nodejs.WritableStream, global.nodejs.ReadWriteStream>>, ?callback:(err:Null<global.nodejs.ErrnoException>) -> Void):global.nodejs.WritableStream { })
		@:overload(function(stream1:global.nodejs.ReadableStream, stream2:ts.AnyOf2<global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, streams:haxe.extern.Rest<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadWriteStream, (err:Null<global.nodejs.ErrnoException>) -> Void>>):global.nodejs.WritableStream { })
		function pipeline<T>(stream1:global.nodejs.ReadableStream, stream2:T, ?callback:(err:Null<global.nodejs.ErrnoException>) -> Void):T;
		@:overload(function(emitter:ServerOptions, event:String):js.lib.Promise<Array<Dynamic>> { })
		function once(emitter:ServerOptions, event:ts.AnyOf2<String, js.lib.Symbol>):js.lib.Promise<Array<Dynamic>>;
		function on(emitter:global.nodejs.EventEmitter, event:String):js.lib.AsyncIterableIterator<Dynamic>;
		function listenerCount(emitter:global.nodejs.EventEmitter, event:ts.AnyOf2<String, js.lib.Symbol>):Float;
		/**
			This symbol shall be used to install a listener for only monitoring `'error'`
			events. Listeners installed using this symbol are called before the regular
			`'error'` listeners are called.
			
			Installing a listener using this symbol does not change the behavior once an
			`'error'` event is emitted, therefore the process will still crash if no
			regular `'error'` listener is installed.
		**/
		final errorMonitor : js.lib.Symbol;
		final captureRejectionSymbol : js.lib.Symbol;
		/**
			Sets or gets the default captureRejection value for all emitters.
		**/
		var captureRejections : Bool;
		var defaultMaxListeners : Float;
	};
	@:optional
	var ServerResponse : {
		var prototype : ServerResponse;
		@:overload(function(stream:ts.AnyOf3<global.nodejs.ReadableStream, global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void { })
		function finished(stream:ts.AnyOf3<global.nodejs.ReadableStream, global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, options:node.stream.FinishedOptions, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void;
		@:overload(function<T>(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:T, ?callback:(err:Null<global.nodejs.ErrnoException>) -> Void):T { })
		@:overload(function<T>(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:global.nodejs.ReadWriteStream, stream4:T, ?callback:(err:Null<global.nodejs.ErrnoException>) -> Void):T { })
		@:overload(function<T>(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:global.nodejs.ReadWriteStream, stream4:global.nodejs.ReadWriteStream, stream5:T, ?callback:(err:Null<global.nodejs.ErrnoException>) -> Void):T { })
		@:overload(function(streams:haxe.ds.ReadOnlyArray<ts.AnyOf3<global.nodejs.ReadableStream, global.nodejs.WritableStream, global.nodejs.ReadWriteStream>>, ?callback:(err:Null<global.nodejs.ErrnoException>) -> Void):global.nodejs.WritableStream { })
		@:overload(function(stream1:global.nodejs.ReadableStream, stream2:ts.AnyOf2<global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, streams:haxe.extern.Rest<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadWriteStream, (err:Null<global.nodejs.ErrnoException>) -> Void>>):global.nodejs.WritableStream { })
		function pipeline<T>(stream1:global.nodejs.ReadableStream, stream2:T, ?callback:(err:Null<global.nodejs.ErrnoException>) -> Void):T;
		@:overload(function(emitter:ServerOptions, event:String):js.lib.Promise<Array<Dynamic>> { })
		function once(emitter:ServerOptions, event:ts.AnyOf2<String, js.lib.Symbol>):js.lib.Promise<Array<Dynamic>>;
		function on(emitter:global.nodejs.EventEmitter, event:String):js.lib.AsyncIterableIterator<Dynamic>;
		function listenerCount(emitter:global.nodejs.EventEmitter, event:ts.AnyOf2<String, js.lib.Symbol>):Float;
		/**
			This symbol shall be used to install a listener for only monitoring `'error'`
			events. Listeners installed using this symbol are called before the regular
			`'error'` listeners are called.
			
			Installing a listener using this symbol does not change the behavior once an
			`'error'` event is emitted, therefore the process will still crash if no
			regular `'error'` listener is installed.
		**/
		final errorMonitor : js.lib.Symbol;
		final captureRejectionSymbol : js.lib.Symbol;
		/**
			Sets or gets the default captureRejection value for all emitters.
		**/
		var captureRejections : Bool;
		var defaultMaxListeners : Float;
	};
	/**
		Optionally overrides the value of
		[`--max-http-header-size`][] for requests received by this server, i.e.
		the maximum length of request headers in bytes.
	**/
	@:optional
	var maxHeaderSize : Float;
	/**
		Use an insecure HTTP parser that accepts invalid HTTP headers when true.
		Using the insecure parser should be avoided.
		See --insecure-http-parser for more information.
	**/
	@:optional
	var insecureHTTPParser : Bool;
};