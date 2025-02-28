import 'package:app_31/bloc/favourite_app/favourite_app_bloc.dart';
import 'package:app_31/bloc/imagepicker/imagepicker_bloc.dart';
import 'package:app_31/bloc/switch/switch_bloc.dart';
import 'package:app_31/repository/favourite_repository.dart';
import 'package:app_31/ui/favourite_app/favourite_app_screen.dart';
import 'package:app_31/ui/image%20picker/imagepicker.dart';
import 'package:app_31/ui/switch/switchscreen.dart';
import 'package:app_31/utils/imagepickerutils.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SwitchBloc(),
        ),
        BlocProvider(
          create: (context) => ImagePickerBloc(ImagePickerUtils()),
        ),
        BlocProvider(create: (_)=>FavouriteBloc(FavouriteRepository()))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.dark,
        ),
        home: FavouriteAppScreen(),
      ),
    );
  }
}
