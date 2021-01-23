package express_serve_static_core;

typedef RequestParamHandler = (req:Request<ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, { }>, res:Response<Dynamic, { }, Float>, next:NextFunction, value:Dynamic, name:String) -> Dynamic;