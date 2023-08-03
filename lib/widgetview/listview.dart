import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharwat2/Widget/models/models.dart';

import 'package:tharwat2/cubit/viewnote/notcubit_cubit.dart';
import 'package:tharwat2/widgetview/listview_item.dart';

class  Notelistview extends StatelessWidget {
  Notelistview({super.key});

  final date=const [
    Colors.blue,
    Colors.amber,
    Colors.deepOrangeAccent,
    Colors.greenAccent


  ];
  int i=0;
  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<NotcubitCubit, NotcubitState>(


      builder: (context, state) {
        BlocProvider.of<NotcubitCubit>(context).fetchAllnotes();
        List<NoteModel > notes =BlocProvider.of<NotcubitCubit>(context).notes?? [];

        return Padding(
          padding:  EdgeInsets.symmetric( vertical: 16),
          child: ListView.builder(

            padding: EdgeInsets.zero,

            itemCount:notes.length,
            //state is Notcubitsuceess ? state.notes.length:3,


            itemBuilder: (context, index) =>Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),

              child: NoteListvieItem(note: notes[index],),
            ) ,


          ),
        );
      },
    );
  }
}