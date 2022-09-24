import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:restoran_mobile/core/helpers/dio_helper.dart';

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
