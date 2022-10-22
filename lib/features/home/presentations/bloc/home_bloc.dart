import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<ChangePageIndex>(_onChangeIndexPage);
  }

  FutureOr<void> _onChangeIndexPage(
    ChangePageIndex event,
    Emitter emit,
  ) async {
    emit(state.copyWith(status: HomeStatus.loading));
    emit(state.copyWith(
      status: HomeStatus.success,
      pageIndex: event.index,
    ));
  }
}
