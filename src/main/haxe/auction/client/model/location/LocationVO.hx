package auction.client.model.location;

class LocationVO extends UniqueKey<LocationId>{
  public var location : Array<String>;
  public function new(location,id:LocationId){
    this.location = __.option(location).defv([]);
    this.id       = id.toInt();
  }
  public function clone(){
    return new Cloner().clone(this);
  }
  public function snoc(node:String){
    var next = clone();
        next.location.push(node);
    return next;
  }
  public function get_uid():LocationId{
    return this.id;
  }
}