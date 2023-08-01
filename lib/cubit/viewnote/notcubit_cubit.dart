import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:tharwat2/Widget/models/models.dart';
import 'package:tharwat2/Widget/resublewidget.dart';

part 'notcubit_state.dart';

class NotcubitCubit extends Cubit<NotcubitState> {
  NotcubitCubit() : super(NotcubitInitial());


  fetchAllnotes ()  {






      try {


        var notebox=  Hive.box<NoteModel>(kNoteBox);

         List<NoteModel> notes= notebox.values.toList();
        emit(Notcubitsuceess(notes));


      } catch (e) {

        emit( Notcubitfailure('the error is :   ${e.toString()}'));
        for(int i=0; i<50;i++)
        {

          print('the error is :   ${e.toString()}');
        }






      }

    }


}
