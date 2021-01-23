package node.child_process;

typedef ExecFileOptions = {
	@:optional
	var maxBuffer : Float;
	@:optional
	var killSignal : ts.AnyOf2<Float, String>;
	@:optional
	var windowsVerbatimArguments : Bool;
	@:optional
	var shell : ts.AnyOf2<String, Bool>;
	@:optional
	var windowsHide : Bool;
	@:optional
	var timeout : Float;
	@:optional
	var uid : Float;
	@:optional
	var gid : Float;
	@:optional
	var cwd : String;
	@:optional
	var env : global.nodejs.ProcessEnv;
};