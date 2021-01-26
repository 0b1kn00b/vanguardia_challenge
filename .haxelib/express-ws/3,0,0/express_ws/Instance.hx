package express_ws;

typedef Instance = {
	var app : Application;
	function applyTo(target:RouterLike):Void;
	function getWss():ws.Server;
};