package express_ws;

typedef RouterLike = {
	@:overload(function<P, ResBody, ReqBody, ReqQuery, Locals>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, Locals>>):RouterLike { })
	@:overload(function(path:express_serve_static_core.PathParams, subApplication:express_serve_static_core.Application):RouterLike { })
	dynamic function get<P, ResBody, ReqBody, ReqQuery, Locals>(path:express_serve_static_core.PathParams, handlers:haxe.extern.Rest<express_serve_static_core.RequestHandler<P, ResBody, ReqBody, ReqQuery, Locals>>):RouterLike;
};