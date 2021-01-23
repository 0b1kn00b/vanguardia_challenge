package node;

@:jsRequire("querystring") @valueModuleOnly extern class Querystring {
	static function stringify(?obj:node.querystring.ParsedUrlQueryInput, ?sep:String, ?eq:String, ?options:node.querystring.StringifyOptions):String;
	static function parse(str:String, ?sep:String, ?eq:String, ?options:node.querystring.ParseOptions):node.querystring.ParsedUrlQuery;
	static function escape(str:String):String;
	static function unescape(str:String):String;
	/**
		The querystring.encode() function is an alias for querystring.stringify().
	**/
	static function encode(?obj:node.querystring.ParsedUrlQueryInput, ?sep:String, ?eq:String, ?options:node.querystring.StringifyOptions):String;
	/**
		The querystring.decode() function is an alias for querystring.parse().
	**/
	static function decode(str:String, ?sep:String, ?eq:String, ?options:node.querystring.ParseOptions):node.querystring.ParsedUrlQuery;
}