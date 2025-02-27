import 'package:equatable/equatable.dart';

abstract class SwitchEvent {
  SwitchEvent();

  @override
  List<Object> get props => [];
}

class EnableOrDisableNotification extends SwitchEvent {}

class SliderEvent extends SwitchEvent {
  double slider;
  SliderEvent({required this.slider});

  List<Object> get pops => [slider];
}
