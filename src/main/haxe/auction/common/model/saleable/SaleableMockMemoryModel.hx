package auction.common.model.saleable;

import haxe.Json;

class SaleableMockMemoryModel extends SaleableMemoryModel{
  static public function pull():Pledge<SaleableModelApi,AuctionFailure>{
    var model                                 = new SaleableMockMemoryModel();
    var resource : { data : Array<Dynamic> }  = Json.parse(__.resource('saleables').string());
    var data                                  = [];
    for (item in resource.data){
      var next = new SaleableSchema().make(item.name,item.description,item.img,item.id);
      
      data.push(next);
    }

    var fn = (next:SaleableVO,memo:SaleableModelApi) -> model.insert(next).map(_ -> memo);

    return return Pledge.bind_fold(data,fn,model);
  }
}