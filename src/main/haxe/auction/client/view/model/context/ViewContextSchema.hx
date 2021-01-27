package auction.client.view.model.context;

@:structInit class ViewContextSchema extends Clazz{
  public function new(){
    super();
  }
  public function mock(root:Root):AppPledge<ViewContextApi>{
    return new ContextInClientSchema().mock().map(
      (context) -> {
        var navigation  = new NavigationViewModel(
          root.window.navigation,
          new LocationMemoryModel()
        );
        var error       = null;
    
        var context    = ({
          root        : root,
          data        : context,
          navigation  : navigation,
          error       : (e:AppErr) -> {
            navigation.route(AppFail(e)).each(
              (_) -> {},
              (e) -> __.crack(e)
            );
          }
        }:ViewContextCls);
    
        return (context:ViewContextApi);
      }
    );
  } 
}