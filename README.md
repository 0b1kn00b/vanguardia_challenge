# VainGlorious

`ContextApi` is the top level model. `ApiApi` is the common model for `Server` and `Client`. 

## ApiApi
```haxe
interface ApiApi {
  public var user       : UserModelApi;
  public var session    : SessionModelApi;
  
  public var auction    : AuctionModelApi;
  public var saleable   : SaleableModelApi;
  public var bid        : BidModelApi;
}  

interface StoreApi<V,E>{
  public function insert(v:V):Pledge<Noise,E>;
  public function update(v:V):Pledge<Noise,E>;
  public function delete(i:Int):Pledge<Bool,E>;
  public function locate(i:Int):Pledge<Option<V>,E>;

  public function values():Pledge<Array<Int>,E>;
}

interface UserModelApi extends StoreApi<UserVO>{
  public function sign_in(credentials : SignInForm):Pledge<Option<SessionId>,AuctionFailure>;
}

interface AuctionModelApi extends StoreApi<AuctionVO>{
  public function start(id:AuctionId):Pledge<Noise,AuctionFailure>;

  
  public function place_bid(id:AuctionId,bid:BidVO):Pledge<Noise,AuctionFailure>;
}

///...
```

`Client` and `Server` can extend `ContextCls` for platform specific functionality.  

see `ContextInServerApi` and `ContextInClientApi`

The common `Context` is built of interfaces, and can be constructed with an object tree of mocks if necessary, allowing unit tests based on hard coded data sets meaning predictable inputs and simple test rigs.



The models are generally sub-classes of `stx.Store`, and have interfaceable constructors via `StoreBackedModel`, which allows for arbitrary initialisation logic that won't interfere with the program flow, and is duck typed in such a way as to allow the top level API to be propagated throughout the model.

The `Store` interface is database agnostic and it's design pushes mixed model decisions forward to the router where the model is accessible, and bearing in mind that virtual tables are quite common if you need push the other way.

`VO` has a uid property which allows typing of `Int` identifiers in constructors to avoid ambiguity


Any pre-existing middleware can be applied untyped, and typing can be introduced progressively as a bug hunting tool.

`VO` can be compi
led and exposed in any programming environment for use on the front end. All have one primary key as the only strict constraint. `UniqueKey` usage is optional.

Streams of data are available via a websocket server configured such that the requests pass through the `Express` server *middleware* and expose the request object to the websocket handler.

`Api` postfix indicates an Interface  
`Cls` is typically an unopinionated base class  
`Abs` indicates abstract class  
`Def` typedef  
`Sum` is an Enum  

`Schema` is a `Model` constructor   
`Model`  is an api for managing `VO`  

`Pledge<T,E>` is a type `Future<Res<T,E>`, I have to work on exposing the functionality to simple javascript objects.

No abstractions were harmed during the making of this library

((obj: SomethingCls): SomethingApi) triggers the class constructor and then conforms it to the required API for the model



## Moochery 

`haxelib build.hxml`

`npm start`

Go [here](http://localhost:3000/assets/img/landscape.jpeg) to check the static middleware

Got [here](http://localhost:3000/) and open your developer console to check the websocket connection.

try...
```
  var ws = Client.instance;
  var res = ws.request(ws.req.user.user_one());
  res.handle(function(x){console.log(x);});
```


```haxe
  //in package auction.client.ws.Request;
  public function sign_in(form:SignInForm){
    return P_OutgoingClientRequest(OCR_User(SignIn(form)));
  }
  //in package auction.server.ws.Handler;
  public function apply(protocol:Null<Protocol>):AppPledge<IncomingClientResponse>{
    return switch(protocol){
      case P_OutgoingClientRequest(OCR_User(SignIn(form)))    : 
        model.api.user.sign_in(form).map(ICR_Session);
      default                                                 : 
        Pledge.accept(ICR_UnImplemented(protocol));
      case null                                               : 
        Pledge.accept(ICR_Error(E_EmptyWsRequest));
    }
  }
```


