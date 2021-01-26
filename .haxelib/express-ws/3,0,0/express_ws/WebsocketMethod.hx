package express_ws;

typedef WebsocketMethod<T> = (route:express_serve_static_core.PathParams, middlewares:haxe.extern.Rest<WebsocketRequestHandler>) -> T;