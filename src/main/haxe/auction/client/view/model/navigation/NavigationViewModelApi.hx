package auction.client.view.model.navigation;

interface NavigationViewModelApi{
  private final data        : NavigationComponent;
  private final location    : LocationModelApi;

  public final home         : HomeViewModel;
  public final credential   : CredentialViewModel;

  public function route(req:Request):AppPledge<Noise>;
}