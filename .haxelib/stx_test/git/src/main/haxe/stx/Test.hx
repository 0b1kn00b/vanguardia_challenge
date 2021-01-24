package stx;

using stx.Pico;
using stx.Nano;
using stx.Assert;
using stx.Test;
using stx.Log;

using stx.Test;
using stx.test.Log;

class Test{
  static public function poke(wildcard:Wildcard,arr:Array<Dynamic>){ 
    __.log().debug(arr.map(__.definition));
    return arr.map(__.that().iz)
      .lfold1(__.that().or)
      .defv(__.that().never())
      .check();
  }
  static var pokey : String = #if poke 'poke' #else 'test' #end;

  #if utest
  static public function test(test:Array<utest.Test>,only:Array<Dynamic>){
    __.log().info('utest:$pokey');
    __.log().debug(test);
    #if poke
      test =  test.filter(__.poke(only));
    #end
    __.log().info(test);
    utest.UTest.run(test);
  }
  #else
  static public function test(test:Array<haxe.unit.TestCase>,only:Array<Dynamic>){
    __.log().info('hunit:$pokey');
    __.test(#if poke ArrayLift.filter(test,Test.poke(__,only)) #else test #end);
  }
  #end
}
#if utest
class LoggedTest extends utest.Test{
  function setup(){
    trace(this);
  }
}
#end

// class TestState{
//   public function new(){}
// }
// class TestGroup{
//   public var entries(default,null):Array<TestEntry>;
//   public function new(){}
// }
// abstract class TestEntry{
//   public var label(default,null):String;
//   public functio
// }
// class TestCls{
  
// }