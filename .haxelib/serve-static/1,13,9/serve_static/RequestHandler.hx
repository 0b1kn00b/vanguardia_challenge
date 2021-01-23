package serve_static;

typedef RequestHandler<R> = (request:node.http.IncomingMessage, response:R, next:() -> Void) -> Dynamic;