import '../../utils/export_utils.dart';
part 'toggle_button_event.dart';
part 'toggle_button_state.dart';

class ToggleButtonBloc extends Bloc<ToggleButtonEvent, ToggleButtonState> {
  ToggleButtonBloc() : super(const TogglePassInitialState(true)) {
    on<TogglePasswordEvent>((event, emit) {
      emit(TogglePassInitialState(!(state as TogglePassInitialState).isShow));
    });
  }
}
