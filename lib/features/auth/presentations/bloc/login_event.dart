part of 'login_bloc.dart';

class LoginEvent extends Equatable {
  const LoginEvent({
    required this.userName,
    required this.password,
  });

  final String userName;
  final String password;

  @override
  List<Object> get props => [userName, password];
}
