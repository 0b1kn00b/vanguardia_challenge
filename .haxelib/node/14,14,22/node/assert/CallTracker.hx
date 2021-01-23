package node.assert;

@:jsRequire("assert", "CallTracker") extern class CallTracker {
	function new();
	@:overload(function<Func>(?fn:Func, ?exact:Float):Func { })
	function calls(?exact:Float):() -> Void;
	function report():Array<CallTrackerReportInformation>;
	function verify():Void;
	static var prototype : CallTracker;
}