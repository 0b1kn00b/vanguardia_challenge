package auction.common.model.context;

class ContextSchema extends Clazz{
  public function mock():AppPledge<ContextApi>{
    return new ApiSchema().mock().map(
      api -> (({ api : api }:ContextCls) : ContextApi)
    );
  }
}