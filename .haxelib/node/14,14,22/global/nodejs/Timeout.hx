package global.nodejs;

typedef Timeout = {
	function hasRef():Bool;
	function refresh():Timeout;
	function ref():Timeout;
	function unref():Timeout;
};