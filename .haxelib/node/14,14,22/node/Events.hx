package node;

@:jsRequire("events") extern class Events {
	function new(?options:Events);
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Events;
	function on(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Events;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Events;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Events;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Events;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Events;
	function setMaxListeners(n:Float):Events;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	function listenerCount(event:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Events;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Events;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	static var prototype : Events;
	@:overload(function(emitter:Events, event:String):js.lib.Promise<Array<Dynamic>> { })
	@:native("once")
	static function once_(emitter:Events, event:ts.AnyOf2<String, js.lib.Symbol>):js.lib.Promise<Array<Dynamic>>;
	@:native("on")
	static function on_(emitter:global.nodejs.EventEmitter, event:String):js.lib.AsyncIterableIterator<Dynamic>;
	@:native("listenerCount")
	static function listenerCount_(emitter:global.nodejs.EventEmitter, event:ts.AnyOf2<String, js.lib.Symbol>):Float;
	/**
		This symbol shall be used to install a listener for only monitoring `'error'`
		events. Listeners installed using this symbol are called before the regular
		`'error'` listeners are called.
		
		Installing a listener using this symbol does not change the behavior once an
		`'error'` event is emitted, therefore the process will still crash if no
		regular `'error'` listener is installed.
	**/
	static final errorMonitor : js.lib.Symbol;
	static final captureRejectionSymbol : js.lib.Symbol;
	/**
		Sets or gets the default captureRejection value for all emitters.
	**/
	static var captureRejections : Bool;
	static var defaultMaxListeners : Float;
}