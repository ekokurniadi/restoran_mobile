import 'package:restoran_mobile/core/helpers/constant_helper.dart';
import 'package:restoran_mobile/core/helpers/dio_helper.dart';

class Initializer {
  Future<void> init() async {
    DioHelper.initialDio(ConstantHelper.BASE_URL);
    DioHelper.setDioLogger(ConstantHelper.BASE_URL);
    await getTokenUser();
  }

  Future<void> getTokenUser() async {
    String? token = '';
    DioHelper.setDioHeader(token);
  }
}
