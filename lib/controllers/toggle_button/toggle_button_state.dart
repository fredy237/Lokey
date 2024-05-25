part of 'toggle_button_bloc.dart';

sealed class ToggleButtonState extends Equatable {
  const ToggleButtonState();

  @override
  List<Object> get props => [];
}

final class ToggleButtonInitial extends ToggleButtonState {}

final class TogglePassInitialState extends ToggleButtonState {
  final bool isShow;

  const TogglePassInitialState(
    this.isShow,
  );

  @override
  List<Object> get props => [
        isShow,
      ];
}
