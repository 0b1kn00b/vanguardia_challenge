package node;

@:jsRequire("vm") @valueModuleOnly extern class Vm {
	static function createContext(?sandbox:node.vm.Context, ?options:node.vm.CreateContextOptions):node.vm.Context;
	static function isContext(sandbox:node.vm.Context):Bool;
	static function runInContext(code:String, contextifiedSandbox:node.vm.Context, ?options:ts.AnyOf2<String, node.vm.RunningScriptOptions>):Dynamic;
	static function runInNewContext(code:String, ?sandbox:node.vm.Context, ?options:ts.AnyOf2<String, node.vm.RunningScriptOptions>):Dynamic;
	static function runInThisContext(code:String, ?options:ts.AnyOf2<String, node.vm.RunningScriptOptions>):Dynamic;
	static function compileFunction(code:String, ?params:haxe.ds.ReadOnlyArray<String>, ?options:node.vm.CompileFunctionOptions):haxe.Constraints.Function;
	/**
		Measure the memory known to V8 and used by the current execution context or a specified context.
		
		The format of the object that the returned Promise may resolve with is
		specific to the V8 engine and may change from one version of V8 to the next.
		
		The returned result is different from the statistics returned by
		`v8.getHeapSpaceStatistics()` in that `vm.measureMemory()` measures
		the memory reachable by V8 from a specific context, while
		`v8.getHeapSpaceStatistics()` measures the memory used by an instance
		of V8 engine, which can switch among multiple contexts that reference
		objects in the heap of one engine.
	**/
	static function measureMemory(?options:node.vm.MeasureMemoryOptions):js.lib.Promise<node.vm.MemoryMeasurement>;
}