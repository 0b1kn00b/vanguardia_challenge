package node.domain;

typedef IDomain = {
	var members : Array<ts.AnyOf2<node.Events, global.nodejs.Timer>>;
	function enter():Void;
	function exit():Void;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	function on(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Domain;
	function setMaxListeners(n:Float):Domain;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	function listenerCount(event:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Domain;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	function run<T>(fn:(args:haxe.extern.Rest<Dynamic>) -> T, args:haxe.extern.Rest<Dynamic>):T;
	function add(emitter:ts.AnyOf2<global.nodejs.EventEmitter, global.nodejs.Timer>):Void;
	function remove(emitter:ts.AnyOf2<global.nodejs.EventEmitter, global.nodejs.Timer>):Void;
	function bind<T>(cb:T):T;
	function intercept<T>(cb:T):T;
};