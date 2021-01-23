package node.string_decoder;

@:jsRequire("string_decoder", "StringDecoder") extern class StringDecoder {
	function new(?encoding:global.BufferEncoding);
	function write(buffer:global.Buffer):String;
	function end(?buffer:global.Buffer):String;
	static var prototype : StringDecoder;
}