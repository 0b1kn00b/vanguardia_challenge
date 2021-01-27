package auction.client.view.model;

class HomeViewModel{
  private final navigation : NavigationViewModel;
  public function new(navigation){
    this.navigation = navigation;
  }
  public function go_to_sign_in(){
    return this.navigation.route(Navigation_Request(NavigateTo(['credential','sign_in'])));
  }
}