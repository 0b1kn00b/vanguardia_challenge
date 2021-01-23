package global.nodejs;

typedef Immediate = {
	function hasRef():Bool;
	var _onImmediate : haxe.Constraints.Function;
	function ref():Immediate;
	function unref():Immediate;
};