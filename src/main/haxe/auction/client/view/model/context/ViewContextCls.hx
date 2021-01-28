package auction.client.view.model.context;

@:structInit class ViewContextCls implements ViewContextApi extends signals.Signal1<Res<ProtocolInClient,AuctionFailure>>{
  var busy                : Bool;

  private function wrap<T,E>(p:Pledge<T,E>):Pledge<T,E>{
    busy = true;
    return p.map(
      (x) -> {
        busy = false;
        return x;
      }
    );
  }

  public final data       : ContextInClientApi;
  public final root       : Root;

  public final navigation : NavigationViewModelApi;
  
  public function new(root:Root,data:ContextInClientApi,navigation:NavigationViewModelApi,error){
    super();

    this.busy       = false;
    this.root       = root;
    this.data       = data;
    this.navigation = navigation;
    this.error      = error;
    
  
      Screen.instance.addComponent(this.root);
  
      this.root.registerEvent("request",(evt) -> {
        this.dispatch(
          __.embed().unpack(evt.data).fold((ok:ProtocolInClient) -> __.accept(ok),() -> __.reject(__.fault().of(E_LostRequest)))
        );
      });
  }
  public function route(req:AppRes<ProtocolInClient>):AppPledge<Noise>{
    return if(!busy){
      switch(req){
        case Accept(r) : 
          switch(r){
            case SigExit(e)                             : 
              __.option(e).fold(
                (e) -> Pledge.reject(e),
                ()  -> Pledge.accept(Noise)
              );
            case User_Protocol(SignIn(form))        :
              var result = data.api.user.sign_in(form);
                  result
                    .map(
                      (opt) -> {
                        this.data.session_id = opt;
                        return opt.fold(_ -> true,()->false);
                      }
                    ).flat_map(
                      b -> b.if_else(
                        () -> this.data.location.previous().map(
                          (opt) -> opt.fold(
                            (ok)  -> ok.location,
                            ()    -> ['home']
                          )
                        ),
                        () -> Pledge.accept(['home'])
                      ).flat_map(
                        location -> route(__.accept(Navigation_Protocol(NavigateTo(location))))
                      )
                    );
              Pledge.accept(Noise);
            //case User_Protocol(User_SignInConfirmed(_))  :
              // //TODO should be PREVIOUS
              // data.location.most_recent()
              // .map(
              //   opt -> opt.fold(x -> x.location,() -> ['home'])
              // ).recover(
              //   (e:AppErr) -> switch(e.data){
              //     case Some(ERR_OF(E_LocationNotFound)) : __.accept(['home']);
              //     default                               : __.reject(e);
              //   } 
              // ).each(
              //   (loc) -> view.dispatch(__.accept(Navigation_Request(NavigateTo(loc)))),
              //   (e)   -> view.dispatch(__.accept(SigExit(e)))
              // );
              //Pledge.accept(Noise);
            case Navigation_Protocol(path)    :
              // wrap(this.view.navigation.route.to(path));
              Pledge.accept(Noise);
            case AppFail(e) : 
              Pledge.reject(e);
          }
        case Reject(e) : 
          // this.view.remove(handler);
          // t.trigger(Report.pure(e));
          Pledge.accept(Noise);
      }
    }else{
      Pledge.accept(Noise);
    }
  }
  dynamic function error(err:AppErr):Void{

  }
}