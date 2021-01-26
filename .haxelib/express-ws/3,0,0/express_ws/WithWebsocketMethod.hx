package express_ws;

typedef WithWebsocketMethod = {
	dynamic function ws(route:express_serve_static_core.PathParams, middlewares:haxe.extern.Rest<WebsocketRequestHandler>):WithWebsocketMethod;
};