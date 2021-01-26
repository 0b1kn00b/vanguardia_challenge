package ws;

/**
	Data represents the message payload received over the WebSocket.
**/
typedef Data = ts.AnyOf4<String, global.Buffer, js.lib.ArrayBuffer, Array<global.Buffer>>;