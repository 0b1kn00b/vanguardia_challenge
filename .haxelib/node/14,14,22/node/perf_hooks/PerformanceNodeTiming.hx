package node.perf_hooks;

typedef PerformanceNodeTiming = {
	/**
		The high resolution millisecond timestamp at which the Node.js process completed bootstrap.
	**/
	final bootstrapComplete : Float;
	/**
		The high resolution millisecond timestamp at which the Node.js process completed bootstrapping.
		If bootstrapping has not yet finished, the property has the value of -1.
	**/
	final environment : Float;
	/**
		The high resolution millisecond timestamp at which the Node.js environment was initialized.
	**/
	final idleTime : Float;
	/**
		The high resolution millisecond timestamp of the amount of time the event loop has been idle
		  within the event loop's event provider (e.g. `epoll_wait`). This does not take CPU usage
		into consideration. If the event loop has not yet started (e.g., in the first tick of the main script),
		  the property has the value of 0.
	**/
	final loopExit : Float;
	/**
		The high resolution millisecond timestamp at which the Node.js event loop started.
		If the event loop has not yet started (e.g., in the first tick of the main script), the property has the value of -1.
	**/
	final loopStart : Float;
	/**
		The high resolution millisecond timestamp at which the V8 platform was initialized.
	**/
	final v8Start : Float;
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