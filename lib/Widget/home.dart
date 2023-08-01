import 'package:flutter/material.dart';

import 'package:tharwat2/Widget/NotesBody.dart';
import 'package:tharwat2/Widget/addbottmsheet.dart';


class NoteHome extends StatelessWidget {
  const NoteHome({super.key});

  @override
  Widget build(BuildContext context) {
    return

    Scaffold(

      body: NotesBody(),
      floatingActionButton: FloatingActionButton(



        onPressed: ()
      {


        showModalBottomSheet(
          isScrollControlled: true,
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(16),

          ) ,
          context: context, builder: (context) =>
        Addshowbotomsheet(),);



      },
      child: Icon(Icons.add),)


    );

  }


}
