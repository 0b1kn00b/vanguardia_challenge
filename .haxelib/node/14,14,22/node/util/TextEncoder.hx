package node.util;

@:jsRequire("util", "TextEncoder") extern class TextEncoder {
	function new();
	final encoding : String;
	function encode(?input:String):js.lib.Uint8Array;
	function encodeInto(input:String, output:js.lib.Uint8Array):EncodeIntoResult;
	static var prototype : TextEncoder;
}