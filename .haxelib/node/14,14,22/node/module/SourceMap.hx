package node.module;

@:jsRequire("module", "SourceMap") extern class SourceMap {
	function new(payload:SourceMapPayload);
	final payload : SourceMapPayload;
	function findEntry(line:Float, column:Float):SourceMapping;
	static var prototype : SourceMap;
}