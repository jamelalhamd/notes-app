import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:tharwat2/Widget/models/models.dart';

import 'package:tharwat2/widgetview/constant.dart';

part 'addnote_state.dart';

class AddnoteCubit extends Cubit<AddnoteState> {
  AddnoteCubit() : super(AddnoteInitial());

  Color? color=Color(0xffAC1);


  addNote(NoteModel note)
  async {

    emit(AddnoteLoading());

 try {


    var notebox=  Hive.box<NoteModel>(kNoteBox);
   await notebox.add(note);
   note.color=color!.value;

    emit(Addnotesuccess());


 } catch (e) {

  emit( Addnotefailure('the error is :   ${e.toString()}'));
  for(int i=0; i<50;i++)
    {

      print('the error is :   ${e.toString()}');
    }






 }

  }



}
