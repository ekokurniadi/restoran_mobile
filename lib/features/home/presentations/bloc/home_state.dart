part of 'home_bloc.dart';

enum HomeStatus { initial, loading, success }

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required HomeStatus status,
    required int pageIndex,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        status: HomeStatus.initial,
        pageIndex: 0,
      );
}
