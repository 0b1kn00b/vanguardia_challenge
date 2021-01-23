package express_serve_static_core;

typedef ErrorRequestHandler<P, ResBody, ReqBody, ReqQuery, Locals> = (err:Dynamic, req:Request<P, ResBody, ReqBody, ReqQuery, Locals>, res:Response<ResBody, Locals, Float>, next:NextFunction) -> Void;