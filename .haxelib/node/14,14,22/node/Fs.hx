package node;

@:jsRequire("fs") @valueModuleOnly extern class Fs {
	/**
		Asynchronous rename(2) - Change the name or location of a file or directory.
	**/
	static function rename(oldPath:node.fs.PathLike, newPath:node.fs.PathLike, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronous rename(2) - Change the name or location of a file or directory.
	**/
	static function renameSync(oldPath:node.fs.PathLike, newPath:node.fs.PathLike):Void;
	/**
		Asynchronous truncate(2) - Truncate a file to a specified length.
		
		Asynchronous truncate(2) - Truncate a file to a specified length.
	**/
	@:overload(function(path:node.fs.PathLike, callback:node.fs.NoParamCallback):Void { })
	static function truncate(path:node.fs.PathLike, len:Null<Float>, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronous truncate(2) - Truncate a file to a specified length.
	**/
	static function truncateSync(path:node.fs.PathLike, ?len:Float):Void;
	/**
		Asynchronous ftruncate(2) - Truncate a file to a specified length.
		
		Asynchronous ftruncate(2) - Truncate a file to a specified length.
	**/
	@:overload(function(fd:Float, callback:node.fs.NoParamCallback):Void { })
	static function ftruncate(fd:Float, len:Null<Float>, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronous ftruncate(2) - Truncate a file to a specified length.
	**/
	static function ftruncateSync(fd:Float, ?len:Float):Void;
	/**
		Asynchronous chown(2) - Change ownership of a file.
	**/
	static function chown(path:node.fs.PathLike, uid:Float, gid:Float, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronous chown(2) - Change ownership of a file.
	**/
	static function chownSync(path:node.fs.PathLike, uid:Float, gid:Float):Void;
	/**
		Asynchronous fchown(2) - Change ownership of a file.
	**/
	static function fchown(fd:Float, uid:Float, gid:Float, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronous fchown(2) - Change ownership of a file.
	**/
	static function fchownSync(fd:Float, uid:Float, gid:Float):Void;
	/**
		Asynchronous lchown(2) - Change ownership of a file. Does not dereference symbolic links.
	**/
	static function lchown(path:node.fs.PathLike, uid:Float, gid:Float, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronous lchown(2) - Change ownership of a file. Does not dereference symbolic links.
	**/
	static function lchownSync(path:node.fs.PathLike, uid:Float, gid:Float):Void;
	/**
		Changes the access and modification times of a file in the same way as `fs.utimes()`,
		with the difference that if the path refers to a symbolic link, then the link is not
		dereferenced: instead, the timestamps of the symbolic link itself are changed.
	**/
	static function lutimes(path:node.fs.PathLike, atime:ts.AnyOf3<String, Float, js.lib.Date>, mtime:ts.AnyOf3<String, Float, js.lib.Date>, callback:node.fs.NoParamCallback):Void;
	/**
		Change the file system timestamps of the symbolic link referenced by `path`. Returns `undefined`,
		or throws an exception when parameters are incorrect or the operation fails.
		This is the synchronous version of `fs.lutimes()`.
	**/
	static function lutimesSync(path:node.fs.PathLike, atime:ts.AnyOf3<String, Float, js.lib.Date>, mtime:ts.AnyOf3<String, Float, js.lib.Date>):Void;
	/**
		Asynchronous chmod(2) - Change permissions of a file.
	**/
	static function chmod(path:node.fs.PathLike, mode:ts.AnyOf2<String, Float>, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronous chmod(2) - Change permissions of a file.
	**/
	static function chmodSync(path:node.fs.PathLike, mode:ts.AnyOf2<String, Float>):Void;
	/**
		Asynchronous fchmod(2) - Change permissions of a file.
	**/
	static function fchmod(fd:Float, mode:ts.AnyOf2<String, Float>, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronous fchmod(2) - Change permissions of a file.
	**/
	static function fchmodSync(fd:Float, mode:ts.AnyOf2<String, Float>):Void;
	/**
		Asynchronous lchmod(2) - Change permissions of a file. Does not dereference symbolic links.
	**/
	static function lchmod(path:node.fs.PathLike, mode:ts.AnyOf2<String, Float>, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronous lchmod(2) - Change permissions of a file. Does not dereference symbolic links.
	**/
	static function lchmodSync(path:node.fs.PathLike, mode:ts.AnyOf2<String, Float>):Void;
	/**
		Asynchronous stat(2) - Get file status.
	**/
	@:overload(function(path:node.fs.PathLike, options:node.fs.StatOptions, callback:(err:Null<global.nodejs.ErrnoException>, stats:ts.AnyOf2<node.fs.Stats, node.fs.BigIntStats>) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, callback:(err:Null<global.nodejs.ErrnoException>, stats:node.fs.Stats) -> Void):Void { })
	static function stat(path:node.fs.PathLike, options:node.fs.BigIntOptions, callback:(err:Null<global.nodejs.ErrnoException>, stats:node.fs.BigIntStats) -> Void):Void;
	/**
		Synchronous stat(2) - Get file status.
	**/
	@:overload(function(path:node.fs.PathLike, options:node.fs.StatOptions):ts.AnyOf2<node.fs.Stats, node.fs.BigIntStats> { })
	@:overload(function(path:node.fs.PathLike):node.fs.Stats { })
	static function statSync(path:node.fs.PathLike, options:node.fs.BigIntOptions):node.fs.BigIntStats;
	/**
		Asynchronous fstat(2) - Get file status.
	**/
	static function fstat(fd:Float, callback:(err:Null<global.nodejs.ErrnoException>, stats:node.fs.Stats) -> Void):Void;
	/**
		Synchronous fstat(2) - Get file status.
	**/
	static function fstatSync(fd:Float):node.fs.Stats;
	/**
		Asynchronous lstat(2) - Get file status. Does not dereference symbolic links.
	**/
	static function lstat(path:node.fs.PathLike, callback:(err:Null<global.nodejs.ErrnoException>, stats:node.fs.Stats) -> Void):Void;
	/**
		Synchronous lstat(2) - Get file status. Does not dereference symbolic links.
	**/
	static function lstatSync(path:node.fs.PathLike):node.fs.Stats;
	/**
		Asynchronous link(2) - Create a new link (also known as a hard link) to an existing file.
	**/
	static function link(existingPath:node.fs.PathLike, newPath:node.fs.PathLike, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronous link(2) - Create a new link (also known as a hard link) to an existing file.
	**/
	static function linkSync(existingPath:node.fs.PathLike, newPath:node.fs.PathLike):Void;
	/**
		Asynchronous symlink(2) - Create a new symbolic link to an existing file.
		
		Asynchronous symlink(2) - Create a new symbolic link to an existing file.
	**/
	@:overload(function(target:node.fs.PathLike, path:node.fs.PathLike, callback:node.fs.NoParamCallback):Void { })
	static function symlink(target:node.fs.PathLike, path:node.fs.PathLike, type:Null<node.fs.symlink.Type_>, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronous symlink(2) - Create a new symbolic link to an existing file.
	**/
	static function symlinkSync(target:node.fs.PathLike, path:node.fs.PathLike, ?type:node.fs.symlink.Type_):Void;
	/**
		Asynchronous readlink(2) - read value of a symbolic link.
		
		Asynchronous readlink(2) - read value of a symbolic link.
		
		Asynchronous readlink(2) - read value of a symbolic link.
		
		Asynchronous readlink(2) - read value of a symbolic link.
	**/
	@:overload(function(path:node.fs.PathLike, options:node.fs.BufferEncodingOption, callback:(err:Null<global.nodejs.ErrnoException>, linkString:global.Buffer) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, options:Null<ts.AnyOf2<String, node.fs.BaseEncodingOptions>>, callback:(err:Null<global.nodejs.ErrnoException>, linkString:ts.AnyOf2<String, global.Buffer>) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, callback:(err:Null<global.nodejs.ErrnoException>, linkString:String) -> Void):Void { })
	static function readlink(path:node.fs.PathLike, options:Null<ts.AnyOf2<String, node.fs.BaseEncodingOptions>>, callback:(err:Null<global.nodejs.ErrnoException>, linkString:String) -> Void):Void;
	/**
		Synchronous readlink(2) - read value of a symbolic link.
		
		Synchronous readlink(2) - read value of a symbolic link.
		
		Synchronous readlink(2) - read value of a symbolic link.
	**/
	@:overload(function(path:node.fs.PathLike, options:node.fs.BufferEncodingOption):global.Buffer { })
	@:overload(function(path:node.fs.PathLike, ?options:ts.AnyOf2<String, node.fs.BaseEncodingOptions>):ts.AnyOf2<String, global.Buffer> { })
	static function readlinkSync(path:node.fs.PathLike, ?options:ts.AnyOf2<String, node.fs.BaseEncodingOptions>):String;
	/**
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
		
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
		
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
		
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
	**/
	@:overload(function(path:node.fs.PathLike, options:node.fs.BufferEncodingOption, callback:(err:Null<global.nodejs.ErrnoException>, resolvedPath:global.Buffer) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, options:Null<ts.AnyOf2<String, node.fs.BaseEncodingOptions>>, callback:(err:Null<global.nodejs.ErrnoException>, resolvedPath:ts.AnyOf2<String, global.Buffer>) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, callback:(err:Null<global.nodejs.ErrnoException>, resolvedPath:String) -> Void):Void { })
	static function realpath(path:node.fs.PathLike, options:Null<ts.AnyOf2<String, node.fs.BaseEncodingOptions>>, callback:(err:Null<global.nodejs.ErrnoException>, resolvedPath:String) -> Void):Void;
	/**
		Synchronous realpath(3) - return the canonicalized absolute pathname.
		
		Synchronous realpath(3) - return the canonicalized absolute pathname.
		
		Synchronous realpath(3) - return the canonicalized absolute pathname.
	**/
	@:overload(function(path:node.fs.PathLike, options:node.fs.BufferEncodingOption):global.Buffer { })
	@:overload(function(path:node.fs.PathLike, ?options:ts.AnyOf2<String, node.fs.BaseEncodingOptions>):ts.AnyOf2<String, global.Buffer> { })
	static function realpathSync(path:node.fs.PathLike, ?options:ts.AnyOf2<String, node.fs.BaseEncodingOptions>):String;
	/**
		Asynchronous unlink(2) - delete a name and possibly the file it refers to.
	**/
	static function unlink(path:node.fs.PathLike, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronous unlink(2) - delete a name and possibly the file it refers to.
	**/
	static function unlinkSync(path:node.fs.PathLike):Void;
	/**
		Asynchronous rmdir(2) - delete a directory.
	**/
	@:overload(function(path:node.fs.PathLike, options:node.fs.RmDirOptions, callback:node.fs.NoParamCallback):Void { })
	static function rmdir(path:node.fs.PathLike, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronous rmdir(2) - delete a directory.
	**/
	static function rmdirSync(path:node.fs.PathLike, ?options:node.fs.RmDirOptions):Void;
	/**
		Asynchronously removes files and directories (modeled on the standard POSIX `rm` utility).
	**/
	@:overload(function(path:node.fs.PathLike, options:node.fs.RmOptions, callback:node.fs.NoParamCallback):Void { })
	static function rm(path:node.fs.PathLike, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronously removes files and directories (modeled on the standard POSIX `rm` utility).
	**/
	static function rmSync(path:node.fs.PathLike, ?options:node.fs.RmOptions):Void;
	/**
		Asynchronous mkdir(2) - create a directory.
		
		Asynchronous mkdir(2) - create a directory.
		
		Asynchronous mkdir(2) - create a directory.
		
		Asynchronous mkdir(2) - create a directory with a mode of `0o777`.
	**/
	@:overload(function(path:node.fs.PathLike, options:Null<ts.AnyOf3<String, Float, Dynamic>>, callback:node.fs.NoParamCallback):Void { })
	@:overload(function(path:node.fs.PathLike, options:Null<ts.AnyOf3<String, Float, node.fs.MakeDirectoryOptions>>, callback:(err:Null<global.nodejs.ErrnoException>, path:Null<String>) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, callback:node.fs.NoParamCallback):Void { })
	static function mkdir(path:node.fs.PathLike, options:Dynamic, callback:(err:Null<global.nodejs.ErrnoException>, path:String) -> Void):Void;
	/**
		Synchronous mkdir(2) - create a directory.
		
		Synchronous mkdir(2) - create a directory.
		
		Synchronous mkdir(2) - create a directory.
	**/
	@:overload(function(path:node.fs.PathLike, ?options:ts.AnyOf3<String, Float, Dynamic>):Void { })
	@:overload(function(path:node.fs.PathLike, ?options:ts.AnyOf3<String, Float, node.fs.MakeDirectoryOptions>):Null<String> { })
	static function mkdirSync(path:node.fs.PathLike, options:Dynamic):String;
	/**
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
		
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
		
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
		
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
	**/
	@:overload(function(prefix:String, options:ts.AnyOf2<String, { var encoding : String; }>, callback:(err:Null<global.nodejs.ErrnoException>, folder:global.Buffer) -> Void):Void { })
	@:overload(function(prefix:String, options:Null<ts.AnyOf2<String, node.fs.BaseEncodingOptions>>, callback:(err:Null<global.nodejs.ErrnoException>, folder:ts.AnyOf2<String, global.Buffer>) -> Void):Void { })
	@:overload(function(prefix:String, callback:(err:Null<global.nodejs.ErrnoException>, folder:String) -> Void):Void { })
	static function mkdtemp(prefix:String, options:Null<ts.AnyOf2<String, node.fs.BaseEncodingOptions>>, callback:(err:Null<global.nodejs.ErrnoException>, folder:String) -> Void):Void;
	/**
		Synchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
		
		Synchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
		
		Synchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required prefix to create a unique temporary directory.
	**/
	@:overload(function(prefix:String, options:node.fs.BufferEncodingOption):global.Buffer { })
	@:overload(function(prefix:String, ?options:ts.AnyOf2<String, node.fs.BaseEncodingOptions>):ts.AnyOf2<String, global.Buffer> { })
	static function mkdtempSync(prefix:String, ?options:ts.AnyOf2<String, node.fs.BaseEncodingOptions>):String;
	/**
		Asynchronous readdir(3) - read a directory.
		
		Asynchronous readdir(3) - read a directory.
		
		Asynchronous readdir(3) - read a directory.
		
		Asynchronous readdir(3) - read a directory.
		
		Asynchronous readdir(3) - read a directory.
	**/
	@:overload(function(path:node.fs.PathLike, options:ts.AnyOf2<String, { var encoding : String; @:optional var withFileTypes : Bool; }>, callback:(err:Null<global.nodejs.ErrnoException>, files:Array<global.Buffer>) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, options:Null<ts.AnyOf2<String, node.fs.BaseEncodingOptions & { @:optional var withFileTypes : Bool; }>>, callback:(err:Null<global.nodejs.ErrnoException>, files:ts.AnyOf2<Array<String>, Array<global.Buffer>>) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, callback:(err:Null<global.nodejs.ErrnoException>, files:Array<String>) -> Void):Void { })
	@:overload(function(path:node.fs.PathLike, options:node.fs.BaseEncodingOptions & { var withFileTypes : Bool; }, callback:(err:Null<global.nodejs.ErrnoException>, files:Array<node.fs.Dirent>) -> Void):Void { })
	static function readdir(path:node.fs.PathLike, options:Null<ts.AnyOf2<String, { var encoding : Null<global.BufferEncoding>; @:optional var withFileTypes : Bool; }>>, callback:(err:Null<global.nodejs.ErrnoException>, files:Array<String>) -> Void):Void;
	/**
		Synchronous readdir(3) - read a directory.
		
		Synchronous readdir(3) - read a directory.
		
		Synchronous readdir(3) - read a directory.
		
		Synchronous readdir(3) - read a directory.
	**/
	@:overload(function(path:node.fs.PathLike, options:ts.AnyOf2<String, { var encoding : String; @:optional var withFileTypes : Bool; }>):Array<global.Buffer> { })
	@:overload(function(path:node.fs.PathLike, ?options:ts.AnyOf2<String, node.fs.BaseEncodingOptions & { @:optional var withFileTypes : Bool; }>):ts.AnyOf2<Array<String>, Array<global.Buffer>> { })
	@:overload(function(path:node.fs.PathLike, options:node.fs.BaseEncodingOptions & { var withFileTypes : Bool; }):Array<node.fs.Dirent> { })
	static function readdirSync(path:node.fs.PathLike, ?options:ts.AnyOf2<String, { var encoding : Null<global.BufferEncoding>; @:optional var withFileTypes : Bool; }>):Array<String>;
	/**
		Asynchronous close(2) - close a file descriptor.
	**/
	static function close(fd:Float, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronous close(2) - close a file descriptor.
	**/
	static function closeSync(fd:Float):Void;
	/**
		Asynchronous open(2) - open and possibly create a file.
		
		Asynchronous open(2) - open and possibly create a file. If the file is created, its mode will be `0o666`.
	**/
	@:overload(function(path:node.fs.PathLike, flags:ts.AnyOf2<String, Float>, callback:(err:Null<global.nodejs.ErrnoException>, fd:Float) -> Void):Void { })
	static function open(path:node.fs.PathLike, flags:ts.AnyOf2<String, Float>, mode:Null<ts.AnyOf2<String, Float>>, callback:(err:Null<global.nodejs.ErrnoException>, fd:Float) -> Void):Void;
	/**
		Synchronous open(2) - open and possibly create a file, returning a file descriptor..
	**/
	static function openSync(path:node.fs.PathLike, flags:ts.AnyOf2<String, Float>, ?mode:ts.AnyOf2<String, Float>):Float;
	/**
		Asynchronously change file timestamps of the file referenced by the supplied path.
	**/
	static function utimes(path:node.fs.PathLike, atime:ts.AnyOf3<String, Float, js.lib.Date>, mtime:ts.AnyOf3<String, Float, js.lib.Date>, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronously change file timestamps of the file referenced by the supplied path.
	**/
	static function utimesSync(path:node.fs.PathLike, atime:ts.AnyOf3<String, Float, js.lib.Date>, mtime:ts.AnyOf3<String, Float, js.lib.Date>):Void;
	/**
		Asynchronously change file timestamps of the file referenced by the supplied file descriptor.
	**/
	static function futimes(fd:Float, atime:ts.AnyOf3<String, Float, js.lib.Date>, mtime:ts.AnyOf3<String, Float, js.lib.Date>, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronously change file timestamps of the file referenced by the supplied file descriptor.
	**/
	static function futimesSync(fd:Float, atime:ts.AnyOf3<String, Float, js.lib.Date>, mtime:ts.AnyOf3<String, Float, js.lib.Date>):Void;
	/**
		Asynchronous fsync(2) - synchronize a file's in-core state with the underlying storage device.
	**/
	static function fsync(fd:Float, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronous fsync(2) - synchronize a file's in-core state with the underlying storage device.
	**/
	static function fsyncSync(fd:Float):Void;
	/**
		Asynchronously writes `buffer` to the file referenced by the supplied file descriptor.
		
		Asynchronously writes `buffer` to the file referenced by the supplied file descriptor.
		
		Asynchronously writes `buffer` to the file referenced by the supplied file descriptor.
		
		Asynchronously writes `buffer` to the file referenced by the supplied file descriptor.
		
		Asynchronously writes `string` to the file referenced by the supplied file descriptor.
		
		Asynchronously writes `string` to the file referenced by the supplied file descriptor.
		
		Asynchronously writes `string` to the file referenced by the supplied file descriptor.
	**/
	@:overload(function<TBuffer>(fd:Float, buffer:TBuffer, offset:Null<Float>, length:Null<Float>, callback:(err:Null<global.nodejs.ErrnoException>, written:Float, buffer:TBuffer) -> Void):Void { })
	@:overload(function<TBuffer>(fd:Float, buffer:TBuffer, offset:Null<Float>, callback:(err:Null<global.nodejs.ErrnoException>, written:Float, buffer:TBuffer) -> Void):Void { })
	@:overload(function<TBuffer>(fd:Float, buffer:TBuffer, callback:(err:Null<global.nodejs.ErrnoException>, written:Float, buffer:TBuffer) -> Void):Void { })
	@:overload(function(fd:Float, string:String, position:Null<Float>, encoding:Null<global.BufferEncoding>, callback:(err:Null<global.nodejs.ErrnoException>, written:Float, str:String) -> Void):Void { })
	@:overload(function(fd:Float, string:String, position:Null<Float>, callback:(err:Null<global.nodejs.ErrnoException>, written:Float, str:String) -> Void):Void { })
	@:overload(function(fd:Float, string:String, callback:(err:Null<global.nodejs.ErrnoException>, written:Float, str:String) -> Void):Void { })
	static function write<TBuffer>(fd:Float, buffer:TBuffer, offset:Null<Float>, length:Null<Float>, position:Null<Float>, callback:(err:Null<global.nodejs.ErrnoException>, written:Float, buffer:TBuffer) -> Void):Void;
	/**
		Synchronously writes `buffer` to the file referenced by the supplied file descriptor, returning the number of bytes written.
		
		Synchronously writes `string` to the file referenced by the supplied file descriptor, returning the number of bytes written.
	**/
	@:overload(function(fd:Float, string:String, ?position:Float, ?encoding:global.BufferEncoding):Float { })
	static function writeSync(fd:Float, buffer:global.nodejs.ArrayBufferView, ?offset:Float, ?length:Float, ?position:Float):Float;
	/**
		Asynchronously reads data from the file referenced by the supplied file descriptor.
	**/
	static function read<TBuffer>(fd:Float, buffer:TBuffer, offset:Float, length:Float, position:Null<Float>, callback:(err:Null<global.nodejs.ErrnoException>, bytesRead:Float, buffer:TBuffer) -> Void):Void;
	/**
		Synchronously reads data from the file referenced by the supplied file descriptor, returning the number of bytes read.
		
		Similar to the above `fs.readSync` function, this version takes an optional `options` object.
		If no `options` object is specified, it will default with the above values.
	**/
	@:overload(function(fd:Float, buffer:global.nodejs.ArrayBufferView, ?opts:node.fs.ReadSyncOptions):Float { })
	static function readSync(fd:Float, buffer:global.nodejs.ArrayBufferView, offset:Float, length:Float, position:Null<Float>):Float;
	/**
		Asynchronously reads the entire contents of a file.
		
		Asynchronously reads the entire contents of a file.
		
		Asynchronously reads the entire contents of a file.
		
		Asynchronously reads the entire contents of a file.
	**/
	@:overload(function(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, options:ts.AnyOf2<String, { var encoding : global.BufferEncoding; @:optional var flag : String; }>, callback:(err:Null<global.nodejs.ErrnoException>, data:String) -> Void):Void { })
	@:overload(function(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, options:Null<ts.AnyOf2<String, node.fs.BaseEncodingOptions & { @:optional var flag : String; }>>, callback:(err:Null<global.nodejs.ErrnoException>, data:ts.AnyOf2<String, global.Buffer>) -> Void):Void { })
	@:overload(function(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, callback:(err:Null<global.nodejs.ErrnoException>, data:global.Buffer) -> Void):Void { })
	static function readFile(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, options:Null<{ @:optional var encoding : Any; @:optional var flag : String; }>, callback:(err:Null<global.nodejs.ErrnoException>, data:global.Buffer) -> Void):Void;
	/**
		Synchronously reads the entire contents of a file.
		
		Synchronously reads the entire contents of a file.
		
		Synchronously reads the entire contents of a file.
	**/
	@:overload(function(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, options:ts.AnyOf2<String, { var encoding : global.BufferEncoding; @:optional var flag : String; }>):String { })
	@:overload(function(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, ?options:ts.AnyOf2<String, node.fs.BaseEncodingOptions & { @:optional var flag : String; }>):ts.AnyOf2<String, global.Buffer> { })
	static function readFileSync(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, ?options:{ @:optional var encoding : Any; @:optional var flag : String; }):global.Buffer;
	/**
		Asynchronously writes data to a file, replacing the file if it already exists.
		
		Asynchronously writes data to a file, replacing the file if it already exists.
	**/
	@:overload(function(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, data:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, callback:node.fs.NoParamCallback):Void { })
	static function writeFile(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, data:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, options:node.fs.WriteFileOptions, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronously writes data to a file, replacing the file if it already exists.
	**/
	static function writeFileSync(path:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, data:ts.AnyOf13<String, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>, ?options:ts.AnyOf2<String, node.fs.BaseEncodingOptions & { @:optional var mode : ts.AnyOf2<String, Float>; @:optional var flag : String; }>):Void;
	/**
		Asynchronously append data to a file, creating the file if it does not exist.
		
		Asynchronously append data to a file, creating the file if it does not exist.
	**/
	@:overload(function(file:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, data:ts.AnyOf2<String, js.lib.Uint8Array>, callback:node.fs.NoParamCallback):Void { })
	static function appendFile(file:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, data:ts.AnyOf2<String, js.lib.Uint8Array>, options:node.fs.WriteFileOptions, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronously append data to a file, creating the file if it does not exist.
	**/
	static function appendFileSync(file:ts.AnyOf4<String, Float, global.Buffer, node.url.URL>, data:ts.AnyOf2<String, js.lib.Uint8Array>, ?options:ts.AnyOf2<String, node.fs.BaseEncodingOptions & { @:optional var mode : ts.AnyOf2<String, Float>; @:optional var flag : String; }>):Void;
	/**
		Watch for changes on `filename`. The callback `listener` will be called each time the file is accessed.
		
		Watch for changes on `filename`. The callback `listener` will be called each time the file is accessed.
	**/
	@:overload(function(filename:node.fs.PathLike, listener:(curr:node.fs.Stats, prev:node.fs.Stats) -> Void):Void { })
	static function watchFile(filename:node.fs.PathLike, options:Null<{ @:optional var persistent : Bool; @:optional var interval : Float; }>, listener:(curr:node.fs.Stats, prev:node.fs.Stats) -> Void):Void;
	/**
		Stop watching for changes on `filename`.
	**/
	static function unwatchFile(filename:node.fs.PathLike, ?listener:(curr:node.fs.Stats, prev:node.fs.Stats) -> Void):Void;
	/**
		Watch for changes on `filename`, where `filename` is either a file or a directory, returning an `FSWatcher`.
		
		Watch for changes on `filename`, where `filename` is either a file or a directory, returning an `FSWatcher`.
		
		Watch for changes on `filename`, where `filename` is either a file or a directory, returning an `FSWatcher`.
		
		Watch for changes on `filename`, where `filename` is either a file or a directory, returning an `FSWatcher`.
	**/
	@:overload(function(filename:node.fs.PathLike, options:ts.AnyOf2<String, { var encoding : String; @:optional var persistent : Bool; @:optional var recursive : Bool; }>, ?listener:(event:String, filename:global.Buffer) -> Void):node.fs.FSWatcher { })
	@:overload(function(filename:node.fs.PathLike, options:Null<ts.AnyOf2<String, { @:optional var encoding : global.BufferEncoding; @:optional var persistent : Bool; @:optional var recursive : Bool; }>>, ?listener:(event:String, filename:ts.AnyOf2<String, global.Buffer>) -> Void):node.fs.FSWatcher { })
	@:overload(function(filename:node.fs.PathLike, ?listener:(event:String, filename:String) -> Dynamic):node.fs.FSWatcher { })
	static function watch(filename:node.fs.PathLike, options:Null<ts.AnyOf2<String, { @:optional var encoding : global.BufferEncoding; @:optional var persistent : Bool; @:optional var recursive : Bool; }>>, ?listener:(event:String, filename:String) -> Void):node.fs.FSWatcher;
	/**
		Asynchronously tests whether or not the given path exists by checking with the file system.
	**/
	static function exists(path:node.fs.PathLike, callback:(exists:Bool) -> Void):Void;
	/**
		Synchronously tests whether or not the given path exists by checking with the file system.
	**/
	static function existsSync(path:node.fs.PathLike):Bool;
	/**
		Asynchronously tests a user's permissions for the file specified by path.
		
		Asynchronously tests a user's permissions for the file specified by path.
	**/
	@:overload(function(path:node.fs.PathLike, callback:node.fs.NoParamCallback):Void { })
	static function access(path:node.fs.PathLike, mode:Null<Float>, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronously tests a user's permissions for the file specified by path.
	**/
	static function accessSync(path:node.fs.PathLike, ?mode:Float):Void;
	/**
		Returns a new `ReadStream` object.
	**/
	static function createReadStream(path:node.fs.PathLike, ?options:ts.AnyOf2<String, { @:optional var flags : String; @:optional var encoding : global.BufferEncoding; @:optional var fd : Float; @:optional var mode : Float; @:optional var autoClose : Bool; @:optional var emitClose : Bool; @:optional var start : Float; @:optional var end : Float; @:optional var highWaterMark : Float; }>):node.fs.ReadStream;
	/**
		Returns a new `WriteStream` object.
	**/
	static function createWriteStream(path:node.fs.PathLike, ?options:ts.AnyOf2<String, { @:optional var flags : String; @:optional var encoding : global.BufferEncoding; @:optional var fd : Float; @:optional var mode : Float; @:optional var autoClose : Bool; @:optional var emitClose : Bool; @:optional var start : Float; @:optional var highWaterMark : Float; }>):node.fs.WriteStream;
	/**
		Asynchronous fdatasync(2) - synchronize a file's in-core state with storage device.
	**/
	static function fdatasync(fd:Float, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronous fdatasync(2) - synchronize a file's in-core state with storage device.
	**/
	static function fdatasyncSync(fd:Float):Void;
	/**
		Asynchronously copies src to dest. By default, dest is overwritten if it already exists.
		No arguments other than a possible exception are given to the callback function.
		Node.js makes no guarantees about the atomicity of the copy operation.
		If an error occurs after the destination file has been opened for writing, Node.js will attempt
		to remove the destination.
		
		Asynchronously copies src to dest. By default, dest is overwritten if it already exists.
		No arguments other than a possible exception are given to the callback function.
		Node.js makes no guarantees about the atomicity of the copy operation.
		If an error occurs after the destination file has been opened for writing, Node.js will attempt
		to remove the destination.
	**/
	@:overload(function(src:node.fs.PathLike, dest:node.fs.PathLike, flags:Float, callback:node.fs.NoParamCallback):Void { })
	static function copyFile(src:node.fs.PathLike, dest:node.fs.PathLike, callback:node.fs.NoParamCallback):Void;
	/**
		Synchronously copies src to dest. By default, dest is overwritten if it already exists.
		Node.js makes no guarantees about the atomicity of the copy operation.
		If an error occurs after the destination file has been opened for writing, Node.js will attempt
		to remove the destination.
	**/
	static function copyFileSync(src:node.fs.PathLike, dest:node.fs.PathLike, ?flags:Float):Void;
	/**
		Write an array of ArrayBufferViews to the file specified by fd using writev().
		position is the offset from the beginning of the file where this data should be written.
		It is unsafe to use fs.writev() multiple times on the same file without waiting for the callback. For this scenario, use fs.createWriteStream().
		On Linux, positional writes don't work when the file is opened in append mode.
		The kernel ignores the position argument and always appends the data to the end of the file.
	**/
	@:overload(function(fd:Float, buffers:haxe.ds.ReadOnlyArray<global.nodejs.ArrayBufferView>, position:Float, cb:(err:Null<global.nodejs.ErrnoException>, bytesWritten:Float, buffers:Array<global.nodejs.ArrayBufferView>) -> Void):Void { })
	static function writev(fd:Float, buffers:haxe.ds.ReadOnlyArray<global.nodejs.ArrayBufferView>, cb:(err:Null<global.nodejs.ErrnoException>, bytesWritten:Float, buffers:Array<global.nodejs.ArrayBufferView>) -> Void):Void;
	/**
		See `writev`.
	**/
	static function writevSync(fd:Float, buffers:haxe.ds.ReadOnlyArray<global.nodejs.ArrayBufferView>, ?position:Float):Float;
	@:overload(function(fd:Float, buffers:haxe.ds.ReadOnlyArray<global.nodejs.ArrayBufferView>, position:Float, cb:(err:Null<global.nodejs.ErrnoException>, bytesRead:Float, buffers:Array<global.nodejs.ArrayBufferView>) -> Void):Void { })
	static function readv(fd:Float, buffers:haxe.ds.ReadOnlyArray<global.nodejs.ArrayBufferView>, cb:(err:Null<global.nodejs.ErrnoException>, bytesRead:Float, buffers:Array<global.nodejs.ArrayBufferView>) -> Void):Void;
	/**
		See `readv`.
	**/
	static function readvSync(fd:Float, buffers:haxe.ds.ReadOnlyArray<global.nodejs.ArrayBufferView>, ?position:Float):Float;
	static function opendirSync(path:String, ?options:node.fs.OpenDirOptions):node.fs.Dir;
	@:overload(function(path:String, options:node.fs.OpenDirOptions, cb:(err:Null<global.nodejs.ErrnoException>, dir:node.fs.Dir) -> Void):Void { })
	static function opendir(path:String, cb:(err:Null<global.nodejs.ErrnoException>, dir:node.fs.Dir) -> Void):Void;
}