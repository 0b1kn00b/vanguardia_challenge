package node.wasi;

@:jsRequire("wasi", "WASI") extern class WASI {
	function new(?options:WASIOptions);
	/**
		Attempt to begin execution of `instance` by invoking its `_start()` export.
		If `instance` does not contain a `_start()` export, then `start()` attempts to
		invoke the `__wasi_unstable_reactor_start()` export. If neither of those exports
		is present on `instance`, then `start()` does nothing.
		
		`start()` requires that `instance` exports a [`WebAssembly.Memory`][] named
		`memory`. If `instance` does not have a `memory` export an exception is thrown.
		
		If `start()` is called more than once, an exception is thrown.
	**/
	function start(instance:Dynamic):Void;
	/**
		Attempt to initialize `instance` as a WASI reactor by invoking its `_initialize()` export, if it is present.
		If `instance` contains a `_start()` export, then an exception is thrown.
		
		`start()` requires that `instance` exports a [`WebAssembly.Memory`][] named
		`memory`. If `instance` does not have a `memory` export an exception is thrown.
		
		If `initialize()` is called more than once, an exception is thrown.
	**/
	function initialize(instance:Dynamic):Void;
	/**
		Is an object that implements the WASI system call API. This object
		should be passed as the `wasi_snapshot_preview1` import during the instantiation of a
		[`WebAssembly.Instance`][].
	**/
	final wasiImport : global.nodejs.Dict<Dynamic>;
	static var prototype : WASI;
}