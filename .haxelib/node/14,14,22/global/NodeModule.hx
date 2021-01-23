package global;

typedef NodeModule = {
	var exports : Dynamic;
	var require : global.nodejs.Require;
	var id : String;
	var filename : String;
	var loaded : Bool;
	var parent : Null<global.nodejs.Module>;
	var children : Array<global.nodejs.Module>;
	var path : String;
	var paths : Array<String>;
};