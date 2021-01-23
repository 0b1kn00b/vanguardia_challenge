package node;

@:jsRequire("module") extern class Module {
	function new(id:String, ?parent:Module);
	var exports : Dynamic;
	var require : global.nodejs.Require;
	var id : String;
	var filename : String;
	var loaded : Bool;
	var parent : Null<global.nodejs.Module>;
	var children : Array<global.nodejs.Module>;
	var path : String;
	var paths : Array<String>;
	static var prototype : Module;
	static function runMain():Void;
	static function wrap(code:String):String;
	static function createRequireFromPath(path:String):global.NodeRequire;
	static function createRequire(path:ts.AnyOf2<String, node.url.URL>):global.NodeRequire;
	static var builtinModules : Array<String>;
	static var Module : {
		/**
			Updates all the live bindings for builtin ES Modules to match the properties of the CommonJS exports.
			It does not add or remove exported names from the ES Modules.
		**/
		function syncBuiltinESMExports():Void;
		function findSourceMap(path:String, ?error:js.lib.Error):node.module.SourceMap;
		var prototype : Module;
		function runMain():Void;
		function wrap(code:String):String;
		function createRequireFromPath(path:String):global.NodeRequire;
		function createRequire(path:ts.AnyOf2<String, node.url.URL>):global.NodeRequire;
		var builtinModules : Array<String>;
		var Module : Dynamic;
	};
	/**
		Updates all the live bindings for builtin ES Modules to match the properties of the CommonJS exports.
		It does not add or remove exported names from the ES Modules.
	**/
	static function syncBuiltinESMExports():Void;
	static function findSourceMap(path:String, ?error:js.lib.Error):node.module.SourceMap;
}