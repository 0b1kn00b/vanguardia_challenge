package auction.server;


abstract GolgiExpressPath(Array<String>) from Array<String> to Array<String>{
  public function new(self:Array<String>){
    this = self;
  }
  @:from static public function fromRequest(self:auction.server.express.Request):GolgiExpressPath{
    var arr   = self.path.split("/");
        arr.shift();
    return new GolgiExpressPath(arr);
  }
}