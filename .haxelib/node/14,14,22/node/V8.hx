package node;

@:jsRequire("v8") @valueModuleOnly extern class V8 {
	/**
		Returns an integer representing a "version tag" derived from the V8 version, command line flags and detected CPU features.
		This is useful for determining whether a vm.Script cachedData buffer is compatible with this instance of V8.
	**/
	static function cachedDataVersionTag():Float;
	static function getHeapStatistics():node.v8.HeapInfo;
	static function getHeapSpaceStatistics():Array<node.v8.HeapSpaceInfo>;
	static function setFlagsFromString(flags:String):Void;
	/**
		Generates a snapshot of the current V8 heap and returns a Readable
		Stream that may be used to read the JSON serialized representation.
		This conversation was marked as resolved by joyeecheung
		This JSON stream format is intended to be used with tools such as
		Chrome DevTools. The JSON schema is undocumented and specific to the
		V8 engine, and may change from one version of V8 to the next.
	**/
	static function getHeapSnapshot():node.stream.Readable;
	static function writeHeapSnapshot(?fileName:String):String;
	static function getHeapCodeStatistics():node.v8.HeapCodeStatistics;
	/**
		Uses a `DefaultSerializer` to serialize value into a buffer.
	**/
	static function serialize(value:Dynamic):global.Buffer;
	/**
		Uses a `DefaultDeserializer` with default options to read a JS value from a buffer.
	**/
	static function deserialize(data:global.nodejs.TypedArray):Dynamic;
}