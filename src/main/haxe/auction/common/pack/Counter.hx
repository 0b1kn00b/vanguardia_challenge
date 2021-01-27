package auction.common.pack;

class Counter{
  var value : Int;
  public function new(){
    this.value = 0;
  }
  public function next(){
    var result = this.value;
    this.value = this.value + 1;
    return result;
  }
  public function portion(length:Int){
    return {
      iterator : {
        next : () -> {
          length = length - 1;
          return next();
        },
        hasNext : () -> {
          return length > 0;    
        }
      }
    };
  }
}