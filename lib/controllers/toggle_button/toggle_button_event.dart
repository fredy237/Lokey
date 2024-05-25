part of 'toggle_button_bloc.dart';

sealed class ToggleButtonEvent extends Equatable {
  const ToggleButtonEvent();

  @override
  List<Object> get props => [];
}

class TogglePasswordEvent extends ToggleButtonEvent {}
