import 'package:app_31/bloc/switch/switch_event.dart';
import 'package:app_31/bloc/switch/switch_state.dart';
import 'package:bloc/bloc.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchStates> {
  SwitchBloc() : super(SwitchStates()) {
    on<EnableOrDisableNotification>(_enableOrDisableNotification);
    on<SliderEvent>(_slider);
  }

  void _enableOrDisableNotification(
    EnableOrDisableNotification events,
    Emitter<SwitchStates> emit,
  ) {
    emit(state.copyWith(isSwitch: !state.isSwitch));
  }

  void _slider(
    SliderEvent events,
    Emitter<SwitchStates> emit,
  ) {
    emit(
      state.copyWith(
        slider: events.slider,
      ),
    );
  }
}
