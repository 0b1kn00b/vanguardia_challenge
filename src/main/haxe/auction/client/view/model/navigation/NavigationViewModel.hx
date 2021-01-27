package auction.client.view.model.navigation;

class NavigationViewModel implements NavigationViewModelApi{
  private final data      : NavigationComponent;
  private final location  : LocationModelApi;
  

  public final home       : HomeViewModel;
  public final credential : CredentialViewModel;

  public function new(data,location){
    this.data       = data;
    this.location   = location;
    this.home       = new HomeViewModel(this);
    this.credential = new CredentialViewModel(this.data.credential);
  }
  public function route(req:Request):AppPledge<Noise>{
    return switch(req){
      case Navigation_Request(NavigateTo(location)) : location.head().fold(
        ok -> 
          (switch(ok){
            case 'home'       : 
              data.bring_to_top(data.home); 
              true;
            case 'credential' : 
              data.bring_to_top(data.credential);
              true;
            case 'fault'     : 
              data.bring_to_top(data.fault);
              true;
            default : 
              false;
          }).if_else(
            () -> Pledge.accept(Noise),
            () -> Pledge.reject(__.fault().of(E_RouteNotFound(location)))
          ),
        () -> {
          Pledge.reject(__.fault().of(E_RouteNotFound(location)));
        }
      );
      default : 
        //TODO
        Pledge.reject(__.fault().of(E_UnImplemented));
    }
  }
} 
