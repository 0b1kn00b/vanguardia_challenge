package auction.server.router.api.session;

class Routes extends golgi.Api<Request>{
  public function get_by_user_id(id:Int){
    return id;
  }
}