package node.fs;

@:jsRequire("fs", "promises") @valueModuleOnly extern class Promises {
	/**
		Asynchronously tests a user's permissions for the file specified by path.
	**/
	static function access(path:PathLike, ?mode:Float):js.lib.Promise<Void>;
	/**
		Asynchronously copies `src` to `dest`. By default, `dest` is overwritten if it already exists.
		Node.js makes no guarantees about the atomicity of the copy operation.
		If an error occurs after the destination file has been opened for writing, Node.js will attempt
		to remove the destination.
	**/
	static function copyFile(src:PathLike, dest:PathLike, ?flags:Float):js.lib.Promise<Void>;
	/**
		Asynchronous open(2) - open and possibly create a file.
	**/
	static function open(path:PathLike, flags:ts.AnyOf2<String, Float>, ?mode:ts.AnyOf2<String, Float>):js.lib.Promise<node.fs.promises.FileHandle>;
	/**
		Asynchronously reads data from the file referenced by the supplied `FileHandle`.
	**/
	static function read<TBuffer>(handle:node.fs.promises.FileHandle, buffer:TBuffer, ?offset:Float, ?length:Float, ?position:Float):js.lib.Promise<{
		var bytesRead : Float;
		var buffer : TBuffer;
	}>;
	/**
		Asynchronously writes `buffer` to the file referenced by the supplied `FileHandle`.
		It is unsafe to call `fsPromises.write()` multiple times on the same file without waiting for the `Promise`
		to be resolved (or rejected). For this scenario, `fs.createWriteStream` is strongly recommended.
		
		Asynchronously writes `string` to the file referenced by the supplied `FileHandle`.
		It is unsafe to call `fsPromises.write()` multiple times on the same file without waiting for the `Promise`
		to be resolved (or rejected). For this scenario, `fs.createWriteStream` is strongly recommended.
	**/
	@:overload(function(handle:node.fs.promises.FileHandle, string:String, ?position:Float, ?encoding:global.BufferEncoding):js.lib.Promise<{
		var bytesWritten : Float;
		var buffer : String;
	}> { })
	static function write<TBuffer>(handle:node.fs.promises.FileHandle, buffer:TBuffer, ?offset:Float, ?length:Float, ?position:Float):js.lib.Promise<{
		var bytesWritten : Float;
		var buffer : TBuffer;
	}>;
	/**
		Asynchronous rename(2) - Change the name or location of a file or directory.
	**/
	static function rename(oldPath:PathLike, newPath:PathLike):js.lib.Promise<Void>;
	/**
		Asynchronous truncate(2) - Truncate a file to a specified length.
	**/
	static function truncate(path:PathLike, ?len:Float):js.lib.Promise<Void>;
	/**
		Asynchronous ftruncate(2) - Truncate a file to a specified length.
	**/
	static function ftruncate(handle:node.fs.promises.FileHandle, ?len:Float):js.lib.Promise<Void>;
	/**
		Asynchronous rmdir(2) - delete a directory.
	**/
	static function rmdir(path:PathLike, ?options:RmDirOptions):js.lib.Promise<Void>;
	/**
		Asynchronously removes files and directories (modeled on the standard POSIX `rm` utility).
	**/
	static function rm(path:PathLike, ?options:RmOptions):js.lib.Promise<Void>;
	/**
		Asynchronous fdatasync(2) - synchronize a file's in-core state with storage device.
	**/
	static function fdatasync(handle:node.fs.promises.FileHandle):js.lib.Promise<Void>;
	/**
		Asynchronous fsync(2) - synchronize a file's in-core state with the underlying storage device.
	**/
	static function fsync(handle:node.fs.promises.FileHandle):js.lib.Promise<Void>;
	/**
		Asynchronous mkdir(2) - create a directory.
		
		Asynchronous mkdir(2) - create a directory.
		
		Asynchronous mkdir(2) - create a directory.
	**/
	@:overload(function(path:PathLike, ?options:ts.AnyOf3<String, Float, Dynamic>):js.lib.Promise<Void> { })
	@:overload(function(path:PathLike, ?options:ts.AnyOf3<String, Float, MakeDirectoryOptions>):js.lib.Promise<Null<String>> { })
	static function mkdir(path:PathLike, options:Dynamic):js.lib.Promise<String>;
	/**
		Asynchronous readdir(3) - read a directory.
		
		Asynchronous readdir(3) - read a directory.
		
		Asynchronous readdir(3) - read a directory.
		
		Asynchronous readdir(3) - read a directory.
	**/
	@:overload(function(path:PathLike, options:ts.AnyOf2<String, { var encoding : String; @:optional var withFileTypes : Bool; }>):js.lib.Promise<Array<global.Buffer>> { })
	@:overload(function(path:PathLike, ?options:ts.AnyOf2<String, BaseEncodingOptions & { @:optional var withFileTypes : Bool; }>):js.lib.Promise<ts.AnyOf2<Array<String>, Array<global.Buffer>>> { })
	@:overload(function(path:PathLike, options:BaseEncodingOptions & { var withFileTypes : Bool; }):js.lib.Promise<Array<Dirent>> { })
	static function readdir(path:PathLike, ?options:ts.AnyOf2<String, BaseEncodingOptions & { @:optional var withFileTypes : Bool; }>):js.lib.Promise<Array<String>>;
	/**
		Asynchronous readlink(2) - read value of a symbolic link.
		
		Asynchronous readlink(2) - read value of a symbolic link.
		
		Asynchronous readlink(2) - read value of a symbolic link.
	**/
	@:overload(function(path:PathLike, options:BufferEncodingOption):js.lib.Promise<global.Buffer> { })
	@:overload(function(path:PathLike, ?options:ts.AnyOf2<String, BaseEncodingOptions>):js.lib.Promise<ts.AnyOf2<String, global.Buffer>> { })
	static function readlink(path:PathLike, ?options:ts.AnyOf2<String, BaseEncodingOptions>):js.lib.Promise<String>;
	/**
		Asynchronous symlink(2) - Create a new symbolic link to an existing file.
	**/
	static function symlink(target:PathLike, path:PathLike, ?type:String):js.lib.Promise<Void>;
	/**
		Asynchronous fstat(2) - Get file status.
	**/
	static function fstat(handle:node.fs.promises.FileHandle):js.lib.Promise<Stats>;
	/**
		Asynchronous lstat(2) - Get file status. Does not dereference symbolic links.
	**/
	static function lstat(path:PathLike):js.lib.Promise<Stats>;
	/**
		Asynchronous stat(2) - Get file status.
	**/
	static function stat(path:PathLike):js.lib.Promise<Stats>;
	/**
		Asynchronous link(2) - Create a new link (also known as a hard link) to an existing file.
	**/
	static function link(existingPath:PathLike, newPath:PathLike):js.lib.Promise<Void>;
	/**
		Asynchronous unlink(2) - delete a name and possibly the file it refers to.
	**/
	static function unlink(path:PathLike):js.lib.Promise<Void>;
	/**
		Asynchronous fchmod(2) - Change permissions of a file.
	**/
	static function fchmod(handle:node.fs.promises.FileHandle, mode:ts.AnyOf2<String, Float>):js.lib.Promise<Void>;
	/**
		Asynchronous chmod(2) - Change permissions of a file.
	**/
	static function chmod(path:PathLike, mode:ts.AnyOf2<String, Float>):js.lib.Promise<Void>;
	/**
		Asynchronous lchmod(2) - Change permissions of a file. Does not dereference symbolic links.
	**/
	static function lchmod(path:PathLike, mode:ts.AnyOf2<String, Float>):js.lib.Promise<Void>;
	/**
		Asynchronous lchown(2) - Change ownership of a file. Does not dereference symbolic links.
	**/
	static function lchown(path:PathLike, uid:Float, gid:Float):js.lib.Promise<Void>;
	/**
		Changes the access and modification times of a file in the same way as `fsPromises.utimes()`,
		with the difference that if the path refers to a symbolic link, then the link is not
		dereferenced: instead, the timestamps of the symbolic link itself are changed.
	**/
	static function lutimes(path:PathLike, atime:ts.AnyOf3<String, Float, js.lib.Date>, mtime:ts.AnyOf3<String, Float, js.lib.Date>):js.lib.Promise<Void>;
	/**
		Asynchronous fchown(2) - Change ownership of a file.
	**/
	static function fchown(handle:node.fs.promises.FileHandle, uid:Float, gid:Float):js.lib.Promise<Void>;
	/**
		Asynchronous chown(2) - Change ownership of a file.
	**/
	static function chown(path:PathLike, uid:Float, gid:Float):js.lib.Promise<Void>;
	/**
		Asynchronously change file timestamps of the file referenced by the supplied path.
	**/
	static function utimes(path:PathLike, atime:ts.AnyOf3<String, Float, js.lib.Date>, mtime:ts.AnyOf3<String, Float, js.lib.Date>):js.lib.Promise<Void>;
	/**
		Asynchronously change file timestamps of the file referenced by the supplied `FileHandle`.
	**/
	static function futimes(handle:node.fs.promises.FileHandle, atime:ts.AnyOf3<String, Float, js.lib.Date>, mtime:ts.AnyOf3<String, Float, js.lib.Date>):js.lib.Promise<Void>;
	/**
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
		
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
		
		Asynchronous realpath(3) - return the canonicalized absolute pathname.
	**/
	@:overload(function(path:PathLike, options:BufferEncodingOption):js.lib.Promise<global.Buffer> { })
	@:overload(function(path:PathLike, ?options:ts.AnyOf2<String, BaseEncodingOptions>):js.lib.Promise<ts.AnyOf2<String, global.Buffer>> { })
	static function realpath(path:PathLike, ?options:ts.AnyOf2<String, BaseEncodingOptions>):js.lib.Promise<String>;
	/**
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required `prefix` to create a unique temporary directory.
		
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required `prefix` to create a unique temporary directory.
		
		Asynchronously creates a unique temporary directory.
		Generates six random characters to be appended behind a required `prefix` to create a unique temporary directory.
	**/
	@:overload(function(prefix:String, options:BufferEncodingOption):js.lib.Promise<global.Buffer> { })
	@:overload(function(prefix:String, ?options:ts.AnyOf2<String, BaseEncodingOptions>):js.lib.Promise<ts.AnyOf2<String, global.Buffer>> { })
	static function mkdtemp(prefix:String, ?options:ts.AnyOf2<String, BaseEncodingOptions>):js.lib.Promise<String>;
	/**
		Asynchronously writes data to a file, replacing the file if it already exists.
		It is unsafe to call `fsPromises.writeFile()` multiple times on the same file without waiting for the `Promise` to be resolved (or rejected).
	**/
	static function writeFile(path:ts.AnyOf4<String, global.Buffer, node.url.URL, node.fs.promises.FileHandle>, data:ts.AnyOf2<String, js.lib.Uint8Array>, ?options:ts.AnyOf2<String, BaseEncodingOptions & { @:optional var mode : ts.AnyOf2<String, Float>; @:optional var flag : ts.AnyOf2<String, Float>; }>):js.lib.Promise<Void>;
	/**
		Asynchronously append data to a file, creating the file if it does not exist.
	**/
	static function appendFile(path:ts.AnyOf4<String, global.Buffer, node.url.URL, node.fs.promises.FileHandle>, data:ts.AnyOf2<String, js.lib.Uint8Array>, ?options:ts.AnyOf2<String, BaseEncodingOptions & { @:optional var mode : ts.AnyOf2<String, Float>; @:optional var flag : ts.AnyOf2<String, Float>; }>):js.lib.Promise<Void>;
	/**
		Asynchronously reads the entire contents of a file.
		
		Asynchronously reads the entire contents of a file.
		
		Asynchronously reads the entire contents of a file.
	**/
	@:overload(function(path:ts.AnyOf4<String, global.Buffer, node.url.URL, node.fs.promises.FileHandle>, options:ts.AnyOf2<String, { var encoding : global.BufferEncoding; @:optional var flag : ts.AnyOf2<String, Float>; }>):js.lib.Promise<String> { })
	@:overload(function(path:ts.AnyOf4<String, global.Buffer, node.url.URL, node.fs.promises.FileHandle>, ?options:ts.AnyOf2<String, BaseEncodingOptions & { @:optional var flag : ts.AnyOf2<String, Float>; }>):js.lib.Promise<ts.AnyOf2<String, global.Buffer>> { })
	static function readFile(path:ts.AnyOf4<String, global.Buffer, node.url.URL, node.fs.promises.FileHandle>, ?options:{ @:optional var encoding : Any; @:optional var flag : ts.AnyOf2<String, Float>; }):js.lib.Promise<global.Buffer>;
	static function opendir(path:String, ?options:OpenDirOptions):js.lib.Promise<Dir>;
}