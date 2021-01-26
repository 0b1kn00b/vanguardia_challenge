package ws;

/**
	VerifyClientCallbackAsync is an asynchronous callback used to inspect the
	incoming message. The return value (boolean) of the function determines
	whether or not to accept the handshake.
**/
typedef VerifyClientCallbackAsync = (info:{ var origin : String; var secure : Bool; var req : node.http.IncomingMessage; }, callback:ts.AnyOf4<(res:Bool) -> Void, (res:Bool, code:Float) -> Void, (res:Bool, code:Float, message:String) -> Void, (res:Bool, code:Float, message:String, headers:node.http.OutgoingHttpHeaders) -> Void>) -> Void;