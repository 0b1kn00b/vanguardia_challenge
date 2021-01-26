package ws;

/**
	VerifyClientCallbackSync is a synchronous callback used to inspect the
	incoming message. The return value (boolean) of the function determines
	whether or not to accept the handshake.
**/
typedef VerifyClientCallbackSync = (info:{ var origin : String; var secure : Bool; var req : node.http.IncomingMessage; }) -> Bool;