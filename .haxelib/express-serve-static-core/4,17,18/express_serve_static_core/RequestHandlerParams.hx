package express_serve_static_core;

typedef RequestHandlerParams<P, ResBody, ReqBody, ReqQuery, Locals> = ts.AnyOf3<RequestHandler<P, ResBody, ReqBody, ReqQuery, Locals>, ErrorRequestHandler<P, ResBody, ReqBody, ReqQuery, Locals>, Array<ts.AnyOf2<RequestHandler<P, Dynamic, Dynamic, qs.ParsedQs, { }>, ErrorRequestHandler<P, Dynamic, Dynamic, qs.ParsedQs, { }>>>>;