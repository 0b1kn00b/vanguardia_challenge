@:jsRequire("express-ws") extern class ExpressWs {
	@:selfCall
	static function call(app:express.Application, ?server:ts.AnyOf2<node.http.Server, node.https.Server>, ?options:express_ws.Options):express_ws.Instance;
}