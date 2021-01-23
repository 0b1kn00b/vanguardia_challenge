package node.http2;

typedef SessionOptions = {
	@:optional
	var maxDeflateDynamicTableSize : Float;
	@:optional
	var maxSessionMemory : Float;
	@:optional
	var maxHeaderListPairs : Float;
	@:optional
	var maxOutstandingPings : Float;
	@:optional
	var maxSendHeaderBlockLength : Float;
	@:optional
	var paddingStrategy : Float;
	@:optional
	var peerMaxConcurrentStreams : Float;
	@:optional
	var settings : Settings;
	@:optional
	function selectPadding(frameLen:Float, maxFrameLen:Float):Float;
	@:optional
	function createConnection(authority:node.url.URL, option:SessionOptions):node.stream.Duplex;
};