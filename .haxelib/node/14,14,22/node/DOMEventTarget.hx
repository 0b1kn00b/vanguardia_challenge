package node;

typedef DOMEventTarget = {
	function addEventListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void, ?opts:{ var once : Bool; }):Dynamic;
};