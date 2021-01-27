package auction.common.model.context;

class ContextSchema extends Clazz{
  public function mock(){
    return new ApiSchema().mock().map(
      api -> (({ api : api }:ContextCls) : ContextApi)
    );
  }
}