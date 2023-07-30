import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:tharwat2/NotesView.dart';
import 'package:tharwat2/Widget/NotesBody.dart';
import 'package:tharwat2/Widget/home.dart';
import 'package:tharwat2/Widget/resublewidget.dart';

Future<void> main() async {

  await Hive.initFlutter();
  
  await Hive.openBox(KNoteBox);  //const KNoteBox='Note Box'; in const page
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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



    );
  }
}
