package node.child_process;

typedef MessagingOptions = {
	/**
		Specify the kind of serialization used for sending messages between processes.
	**/
	@:optional
	var serialization : SerializationType;
};