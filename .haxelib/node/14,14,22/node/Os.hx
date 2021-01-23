package node;

@:jsRequire("os") @valueModuleOnly extern class Os {
	static function hostname():String;
	static function loadavg():Array<Float>;
	static function uptime():Float;
	static function freemem():Float;
	static function totalmem():Float;
	static function cpus():Array<node.os.CpuInfo>;
	static function type():String;
	static function release():String;
	static function networkInterfaces():global.nodejs.Dict<Array<node.os.NetworkInterfaceInfo>>;
	static function homedir():String;
	@:overload(function(?options:{ var encoding : global.BufferEncoding; }):node.os.UserInfo<String> { })
	static function userInfo(options:{ var encoding : String; }):node.os.UserInfo<global.Buffer>;
	static function arch():String;
	/**
		Returns a string identifying the kernel version.
		On POSIX systems, the operating system release is determined by calling
		[uname(3)][]. On Windows, `pRtlGetVersion` is used, and if it is not available,
		`GetVersionExW()` will be used. See
		https://en.wikipedia.org/wiki/Uname#Examples for more information.
	**/
	static function version():String;
	static function platform():global.nodejs.Platform;
	static function tmpdir():String;
	static function endianness():String;
	/**
		Gets the priority of a process.
		Defaults to current process.
	**/
	static function getPriority(?pid:Float):Float;
	/**
		Sets the priority of the current process.
		
		Sets the priority of the process specified process.
	**/
	@:overload(function(pid:Float, priority:Float):Void { })
	static function setPriority(priority:Float):Void;
	static final EOL : String;
}