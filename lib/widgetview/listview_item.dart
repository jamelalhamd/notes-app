import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharwat2/Widget/Editnotescreen.dart';
import 'package:tharwat2/Widget/models/models.dart';
import 'package:tharwat2/cubit/viewnote/notcubit_cubit.dart';

class NoteListvieItem extends StatelessWidget {
  const NoteListvieItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){

        Navigator.push(context,MaterialPageRoute(builder: (context) =>Editnoteview() ,));
      },
      child: Container(
        padding:EdgeInsets.only(top:24,bottom: 24,left: 16 ) ,
        decoration: BoxDecoration(color: Color(note.color),
          borderRadius: BorderRadius.circular(16),



        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,

          children: [
            ListTile(


              title: Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),

                child: Text(
                    note.title,style:
                TextStyle(color: Colors.black,
                    fontFamily:'Poppins' ,
                    fontSize: 25 )),
              ),
              subtitle:

              Text(note.subtitle,style:
              TextStyle(color:
              Colors.black.withOpacity(0.5),
                  fontSize: 18)),

              trailing:IconButton(onPressed:(){

                note.delete();
                BlocProvider.of<NotcubitCubit>(context).fetchAllnotes();
              },

                icon: Icon(Icons.delete,color: Colors.black,size: 30),

              ) ,



            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(note.date,style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(.5))),
            )
          ],
        ),

      ),
    );
  }
}