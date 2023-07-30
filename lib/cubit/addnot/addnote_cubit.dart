import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:tharwat2/Widget/models/models.dart';
import 'package:tharwat2/Widget/resublewidget.dart';

part 'addnote_state.dart';

class AddnoteCubit extends Cubit<AddnoteState> {
  AddnoteCubit() : super(AddnoteInitial());



  addNote(NoteModel note)
  async {

    emit(AddnoteLoading());
 try {
   var notebox= Hive.box<NoteModel>(KNoteBox);
   await notebox.add(note);

    emit(Addnotesuccess());
 } catch (e) {

   Addnotefailure(e.toString());
 }

  }



}
