import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';

class InfoService {
  static Future getNews() async {
    Response res = await Dio().get(
      "http://localhost:1337/api/news?populate=*",
      options: Options(
          headers: {"Authorization": "Bearer ${GetStorage().read("token")}"}),
    );
    return res.data;
  }
static Future uploadNews() async {
    Response res = await Dio().post(
      'http://localhost:1337/api/news',
      options: Options(
        headers: {
          "Authorization": "Bearer ${GetStorage().read('token')}",
        },
      ),
      data: {
        "data": {
          "title": "Postman orqali yangilik 2",
          "content": "Postman Content 2 23",
          "likes": 12233,
          "isImportant": false
        }
      },
    );

    return res.data;
  }










}
