part of 'cashier_bloc.dart';

abstract class CashierState extends Equatable {
  const CashierState();
  
  @override
  List<Object> get props => [];
}

class CashierInitial extends CashierState {}
