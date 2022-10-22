import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:restoran_mobile/core/helpers/dio_helper.dart';
import 'package:restoran_mobile/initializer.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<LoginEvent>(_login);
  }

  FutureOr<void> _login(LoginEvent event, Emitter emit) async {
    emit(state.copyWith(status: LoginStatus.loading));
    try {
      final response = await DioHelper.dio!.post('/auth/login', data: {
        'user_name': event.userName,
        'password': event.password,
      });
      final sharedPreferences = Initializer.sharedPreferences;

      /// INFO : MENYIMPAN DATA SESSION USER YANG LOGIN KE LOCAL HP(Emulator/device)
      await sharedPreferences.setInt('id', response.data['data']['id']);
      await sharedPreferences.setString(
        'nama',
        response.data['data']['first_name'] +
            ' ' +
            response.data['data']['last_name'],
      );
      await sharedPreferences.setString(
        'profile_picture',
        response.data['data']['profile_picture'],
      );
      await sharedPreferences.setString('token', response.data['token']);

      DioHelper.setDioHeader(response.data['token']);

      emit(state.copyWith(
        status: LoginStatus.success,
        token: response.data['token'],
        user: response.data['data'],
        message: response.data['message'],
      ));
    } on DioError catch (e) {
      emit(state.copyWith(
        status: LoginStatus.fail,
        message: e.error,
      ));
    }
  }
}
