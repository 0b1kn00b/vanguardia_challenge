package auction.server.test;

typedef DeepStateTestTypedef = {
  final a : Int;
  final b : {
    final c : ds.ImmutableArray<{final d : Bool;}>;
  }
}
class DeepStateTest extends utest.Test{
  public function test(){
    var s : DeepStateTestTypedef = {
      a : 1,
      b : {
        c : [{ d : true}, { d : false }]
      }
    };
    var self = new DeepState<DeepStateTestTypedef>(s);
    var next = self.update(self.state.a = 2);
    //trace(next);

    // var t     = new ClassyDeepState();
    // var selft = new DeepState<ClassyDeepState>(t);
    // var nextt = selft.update(selft.state.a = 2);
   
  }
}
@:publicFields class ClassyDeepState{
  final a : Int;
  final b : {
    final c : ds.ImmutableArray<{final d : Bool;}>;
  };
  public function new(){
    this.a = 1;
    this.b = {
      c : [{ d : true}, { d : false }]
    };
  }
}