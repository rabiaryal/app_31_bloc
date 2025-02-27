import 'package:app_31/bloc/switch/switch_bloc.dart';
import 'package:app_31/bloc/switch/switch_event.dart';
import 'package:app_31/bloc/switch/switch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Case"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Notifications"),
                BlocBuilder<SwitchBloc, SwitchStates>(
                    buildWhen: (previous, current) =>
                        previous.isSwitch != current.isSwitch,
                    builder: (context, state) {
                      print('notification');
                      return Switch(
                          value: state.isSwitch,
                          onChanged: (newValue) {
                            context
                                .read<SwitchBloc>()
                                .add(EnableOrDisableNotification());
                          });
                    })
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            BlocBuilder<SwitchBloc, SwitchStates>(
              buildWhen: (previous, current) =>
                  previous.slider != current.slider,
              builder: (context, state) {
                return Container(
                  height: 200,
                  color: Colors.red.withValues(
                    alpha: state.slider,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 50,
            ),
            BlocBuilder<SwitchBloc, SwitchStates>(
              builder: (context, state) {
                return Slider(
                    value: state.slider,
                    onChanged: (value) {
                      print(value);
                      context.read<SwitchBloc>().add(
                            SliderEvent(slider: value),
                          );
                    });
              },
            )
          ],
        ),
      ),
    );
  }
}
