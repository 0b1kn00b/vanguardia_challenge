package node.fs;

typedef WriteFileOptions = Null<ts.AnyOf2<String, BaseEncodingOptions & {
	@:optional
	var mode : ts.AnyOf2<String, Float>;
	@:optional
	var flag : String;
}>>;