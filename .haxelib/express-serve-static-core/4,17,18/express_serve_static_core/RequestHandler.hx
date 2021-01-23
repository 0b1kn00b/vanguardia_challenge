package express_serve_static_core;

typedef RequestHandler<P, ResBody, ReqBody, ReqQuery, Locals> = (req:Request<P, ResBody, ReqBody, ReqQuery, Locals>, res:Response<ResBody, Locals, Float>, next:NextFunction) -> Void;