package node.perf_hooks;

typedef PerformanceObserverEntryList = {
	function getEntries():Array<PerformanceEntry>;
	function getEntriesByName(name:String, ?type:EntryType):Array<PerformanceEntry>;
	function getEntriesByType(type:EntryType):Array<PerformanceEntry>;
};