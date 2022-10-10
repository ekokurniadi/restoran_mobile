import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'cashier_event.dart';
part 'cashier_state.dart';

class CashierBloc extends Bloc<CashierEvent, CashierState> {
  CashierBloc() : super(CashierInitial()) {
    on<CashierEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
