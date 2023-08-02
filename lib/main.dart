import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:tharwat2/Widget/home.dart';
import 'package:tharwat2/Widget/models/models.dart';


import 'package:tharwat2/cubit/simpe_bloc_observer.dart';
import 'package:tharwat2/cubit/viewnote/notcubit_cubit.dart';
import 'package:tharwat2/widgetview/constant.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNoteBox);
  Bloc.observer=SimpleBlockObserver();


  // the model generated//const KNoteBox='Note Box'; in const page
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(

          create: (context) => NotcubitCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,

        theme: ThemeData(


            brightness: Brightness.dark,
            fontFamily: 'ssets/fonts/Poppins-Regular.ttf'

        ),
        home:

        Scaffold(

          body: NoteHome(),


        ),


      ),
    );
  }
}
