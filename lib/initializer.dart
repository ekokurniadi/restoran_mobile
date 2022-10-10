import 'package:restoran_mobile/core/helpers/constant_helper.dart';
import 'package:restoran_mobile/core/helpers/dio_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Initializer {
  static late SharedPreferences sharedPreferences;

  Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    DioHelper.initialDio(ConstantHelper.BASE_URL);
    DioHelper.setDioLogger(ConstantHelper.BASE_URL);
    await getTokenUser();
  }

  Future<void> getTokenUser() async {
    String? token = sharedPreferences.getString('token');
    DioHelper.setDioHeader(token);
  }
}
