import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharwat2/Widget/NotesAppBar.dart';
import 'package:tharwat2/Widget/models/models.dart';
import 'package:tharwat2/cubit/viewnote/notcubit_cubit.dart';

import 'package:tharwat2/widgetview/textfield.dart';

class Editviewbody extends StatefulWidget {
  const Editviewbody({super.key, required this.notes});


  final NoteModel notes;

  @override
  State<Editviewbody> createState() => _EditviewbodyState();
}

class _EditviewbodyState extends State<Editviewbody> {

        String? titel,content;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50),
           GestureDetector(
              onTap: (){Navigator.pop(context);},
              child: CustomAppbar(onPressed:(){

              widget.notes.title=titel?? widget.notes.title;
              widget.notes.subtitle=content ?? widget.notes.subtitle;
             // widget.notes.save();
             // BlocProvider.of<NotcubitCubit>(context).fetchAllnotes();
              Navigator.pop(context);

              } ,
                  title: 'Edit Note',icon: Icons.edit_outlined)),
          const SizedBox(height: 50),
         Customtextfield(
            onChanged: (value){
              titel=value;
            },


              hintext: widget.notes.title,maxline: 1),
          const  SizedBox(height: 16),
           Customtextfield(

                onChanged: (value){
             content
             =value;

                },
              hintext:  widget.notes.subtitle,maxline: 5),


        ],
      ),
    );
  }
}