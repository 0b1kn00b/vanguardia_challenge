package node;

typedef NodeEventTarget = {
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):NodeEventTarget;
};