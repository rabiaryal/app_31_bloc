import 'dart:io';

import 'package:app_31/bloc/imagepicker/imagepicker_bloc.dart';
import 'package:app_31/bloc/imagepicker/imagepicker_event.dart';
import 'package:app_31/bloc/imagepicker/imagepicker_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagePicker extends StatefulWidget {
  const ImagePicker({super.key});

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image picker"),
      ),
      body: Center(
        child: BlocBuilder<ImagePickerBloc, ImagePickerState>(
            builder: (context, state) {
          if (state.file == null) {
            return InkWell(
              onTap: () {
                context.read<ImagePickerBloc>().add(CameraCapture());
              },
              child: CircleAvatar(
                child: Icon(Icons.camera),
              ),
            );
          } else {
            return Image.file(
              File(
                state.file!.path.toString(),
              ),
            );
          }
        }),
      ),
    );
  }
}
