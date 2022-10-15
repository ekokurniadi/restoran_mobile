import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  String get errorMessage;
}

class ServerFailure extends Failure {

  ServerFailure({required this.message});
  final String message;

  @override
  List<Object?> get props => [message];

  @override
  String get errorMessage => message;

}