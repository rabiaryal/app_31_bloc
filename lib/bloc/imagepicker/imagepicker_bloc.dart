import 'package:app_31/bloc/imagepicker/imagepicker_event.dart';
import 'package:app_31/bloc/imagepicker/imagepicker_state.dart';
import 'package:app_31/utils/imagepickerutils.dart';
import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  final ImagePickerUtils imagePickerUtils;
  ImagePickerBloc(this.imagePickerUtils) : super(const ImagePickerState()) {
    on<CameraCapture>(cameraCapture);
  }

  void cameraCapture(
      CameraCapture event, Emitter<ImagePickerState> states) async {
    XFile? file = await imagePickerUtils.cameraCapture();
    emit(
      state.copyWith(
        file: file,
      ),
    );
  }
}
