part of 'login_bloc.dart';

enum LoginStatus { initial, loading, success, fail }

class LoginState extends Equatable {
  const LoginState({
    required this.message,
    required this.token,
    required this.user,
    required this.status,
  });

  final String message;
  final String token;
  final Map<String, dynamic> user;
  final LoginStatus status;

  factory LoginState.initial() {
    return const LoginState(
      message: '',
      token: '',
      user: {},
      status: LoginStatus.initial,
    );
  }

  LoginState copyWith({
    String? message,
    String? token,
    Map<String, dynamic>? user,
    LoginStatus? status,
  }) {
    return LoginState(
      message: message ?? this.message,
      token: token ?? this.token,
      user: user ?? this.user,
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [message, token, user, status];
}
