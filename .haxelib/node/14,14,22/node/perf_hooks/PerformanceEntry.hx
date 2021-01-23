package node.perf_hooks;

typedef PerformanceEntry = {
	/**
		The total number of milliseconds elapsed for this entry.
		This value will not be meaningful for all Performance Entry types.
	**/
	final duration : Float;
	/**
		The name of the performance entry.
	**/
	final name : String;
	/**
		The high resolution millisecond timestamp marking the starting time of the Performance Entry.
	**/
	final startTime : Float;
	/**
		The type of the performance entry.
		Currently it may be one of: 'node', 'mark', 'measure', 'gc', or 'function'.
	**/
	final entryType : EntryType;
	/**
		When `performanceEntry.entryType` is equal to 'gc', `the performance.kind` property identifies
		the type of garbage collection operation that occurred.
		See perf_hooks.constants for valid values.
	**/
	@:optional
	final kind : Float;
	/**
		When `performanceEntry.entryType` is equal to 'gc', the `performance.flags`
		property contains additional information about garbage collection operation.
		See perf_hooks.constants for valid values.
	**/
	@:optional
	final flags : Float;
};