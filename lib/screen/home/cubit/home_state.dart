part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required int currentIndex,
  }) = _HomeState;
  factory HomeState.initial() => const HomeState(
        currentIndex: 0,
      );
}
