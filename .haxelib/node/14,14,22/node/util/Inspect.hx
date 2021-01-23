package node.util;

@:jsRequire("util", "inspect") @valueModuleOnly extern class Inspect {
	@:overload(function(object:Dynamic, options:InspectOptions):String { })
	@:selfCall
	static function call(object:Dynamic, ?showHidden:Bool, ?depth:Float, ?color:Bool):String;
	static var colors : global.nodejs.Dict<ts.Tuple2<Float, Float>>;
	static var styles : Dynamic;
	static var defaultOptions : InspectOptions;
	/**
		Allows changing inspect settings from the repl.
	**/
	static var replDefaults : InspectOptions;
	static final custom : js.lib.Symbol;
}