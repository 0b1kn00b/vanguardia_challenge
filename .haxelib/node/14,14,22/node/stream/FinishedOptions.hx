package node.stream;

typedef FinishedOptions = {
	@:optional
	var error : Bool;
	@:optional
	var readable : Bool;
	@:optional
	var writable : Bool;
};