
import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';

class SignInUp {
  static Future signIn(String identifier, String password) async {
    try {
      Response res = await Dio().post(
        'http://localhost:1337/api/auth/local',
        data: {
          "identifier": identifier,
          "password": password,
        },
      );
      await GetStorage().write('token', res.data['jwt']);
      return true;
    } catch (e) {
      print("XATO: $e!");
      return false;
    }
  }

  static Future signUp(String identifier, String password) async {
    try {
      Response res = await Dio().post(
        'http://localhost:1337/api/auth/local/register',
        data: {
          "email": identifier,
          "username": "Test Username",
          "password": password,
        },
      );

      await GetStorage().write('token', res.data['jwt']);
      return true;
    } catch (e) {
      print("XATO: $e!");
      return false;
    }
  }
}

