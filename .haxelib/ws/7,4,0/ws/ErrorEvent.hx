package ws;

typedef ErrorEvent = {
	var error : Dynamic;
	var message : String;
	var type : String;
	var target : Ws;
};