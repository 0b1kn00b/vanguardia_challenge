package js.html;

typedef INavigationPreloadManager = {
	function disable():js.lib.Promise<Void>;
	function enable():js.lib.Promise<Void>;
	function getState():js.lib.Promise<NavigationPreloadState>;
	function setHeaderValue(value:String):js.lib.Promise<Void>;
};