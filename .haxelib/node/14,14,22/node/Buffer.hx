package node;

@:jsRequire("buffer") @valueModuleOnly extern class Buffer {
	static function transcode(source:js.lib.Uint8Array, fromEnc:node.buffer.TranscodeEncoding, toEnc:node.buffer.TranscodeEncoding):global.Buffer;
	static final INSPECT_MAX_BYTES : Float;
	static final kMaxLength : Float;
	static final kStringMaxLength : Float;
	static final constants : {
		var MAX_LENGTH : Float;
		var MAX_STRING_LENGTH : Float;
	};
}