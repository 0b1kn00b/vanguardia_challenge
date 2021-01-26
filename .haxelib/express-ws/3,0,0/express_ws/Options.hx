package express_ws;

typedef Options = {
	@:optional
	var leaveRouterUntouched : Bool;
	@:optional
	var wsOptions : ws.ServerOptions;
};