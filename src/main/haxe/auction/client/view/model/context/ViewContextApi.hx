package auction.client.view.model.context;

import haxe.extern.EitherType;

import signals.Signal;



interface ViewContextApi {
  public final navigation : NavigationViewModelApi;  

  public function add(callback:AppRes<Request>->Void, ?fireOnce:Bool = false, ?priority:Int = 0, ?fireOnAdd:Null<Bool> = null):BaseSignal<AppRes<Request>->Void>;
  public function remove(callback:EitherType<Bool, AppRes<Request>->Void> = false):Void;

  public function route(request:AppRes<Request>):AppPledge<Noise>;
}