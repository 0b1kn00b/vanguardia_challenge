package auction.server.model.server_context;

class ContextInServerSchema extends Clazz{
  public function mock():AppPledge<ContextInServerApi>{
    var data = new ContextSchema().mock();
    return data.map(
      (context:ContextApi) -> {
        var next : ContextInServerApi= new ContextInServerCls(context.api);
        return next;
      }
    );
  }
}