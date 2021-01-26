package ws;

typedef ServerOptions = {
	@:optional
	var host : String;
	@:optional
	var port : Float;
	@:optional
	var backlog : Float;
	@:optional
	var server : ts.AnyOf2<node.http.Server, node.https.Server>;
	@:optional
	dynamic function verifyClient(info:{ var origin : String; var secure : Bool; var req : node.http.IncomingMessage; }, callback:ts.AnyOf4<(res:Bool) -> Void, (res:Bool, code:Float) -> Void, (res:Bool, code:Float, message:String) -> Void, (res:Bool, code:Float, message:String, headers:node.http.OutgoingHttpHeaders) -> Void>):ts.AnyOf2<Bool, Void>;
	@:optional
	var handleProtocols : Dynamic;
	@:optional
	var path : String;
	@:optional
	var noServer : Bool;
	@:optional
	var clientTracking : Bool;
	@:optional
	var perMessageDeflate : ts.AnyOf2<Bool, PerMessageDeflateOptions>;
	@:optional
	var maxPayload : Float;
};