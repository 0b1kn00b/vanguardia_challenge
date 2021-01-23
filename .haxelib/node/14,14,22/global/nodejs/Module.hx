package global.nodejs;

typedef Module = {
	var exports : Dynamic;
	var require : Require;
	var id : String;
	var filename : String;
	var loaded : Bool;
	var parent : Null<Module>;
	var children : Array<Module>;
	var path : String;
	var paths : Array<String>;
};