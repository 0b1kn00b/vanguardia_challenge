package ws;

typedef CloseEvent = {
	var wasClean : Bool;
	var code : Float;
	var reason : String;
	var target : Ws;
};