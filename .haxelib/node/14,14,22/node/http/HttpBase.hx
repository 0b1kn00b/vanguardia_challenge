package node.http;

typedef HttpBase = {
	@:overload(function(callback:() -> Void):HttpBase { })
	function setTimeout(?msecs:Float, ?callback:() -> Void):HttpBase;
	/**
		Limits maximum incoming headers count. If set to 0, no limit will be applied.
	**/
	var maxHeadersCount : Null<Float>;
	var timeout : Float;
	/**
		Limit the amount of time the parser will wait to receive the complete HTTP headers.
	**/
	var headersTimeout : Float;
	var keepAliveTimeout : Float;
	/**
		Sets the timeout value in milliseconds for receiving the entire request from the client.
	**/
	var requestTimeout : Float;
};