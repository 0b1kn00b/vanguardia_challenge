package express_ws;

typedef WebsocketRequestHandler = (ws:Ws, req:express.Request<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, { }>, next:express.NextFunction) -> Void;