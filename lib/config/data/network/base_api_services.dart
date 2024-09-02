
abstract class BaseApiServices{
  Future<dynamic> getApi(String uri);

  Future<dynamic> postAPi(String uri, var data);
}

