package auction.common.model.saleable;

class SaleableSchema extends Clazz{
  public function make(name: String,description:String,img:String,id:Int){
		return new SaleableVO(name,description,img,id);
	}
}