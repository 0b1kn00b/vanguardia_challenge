package auction.common.model.saleable;

class SaleableVO extends UniqueKey<SaleableId>{
	static var counter = new Counter();
	
	public function new(name: String,description:String,img:String,id:Int){
		this.name 				= name;
		this.description 	= description;
		this.img 					= img;
		this.id 					= id;
	}
	public var name 							: String;
	public var description 				: String;
	public var img 								: String;
	public var id									: Int;
	public function get_uid():SaleableId{
		return id;
	}
}
