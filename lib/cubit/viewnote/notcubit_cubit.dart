import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:tharwat2/Widget/models/models.dart';

import 'package:tharwat2/widgetview/constant.dart';

part 'notcubit_state.dart';

class NotcubitCubit extends Cubit<NotcubitState> {
  NotcubitCubit() : super(NotcubitInitial());



  List<NoteModel>? notes;

  fetchAllnotes ()  {

        var notebox=  Hive.box<NoteModel>(kNoteBox);

      notes= notebox.values.toList();

         for(int i=0;i<50;++i)
           {    print(' the lenght is :  ${notes!.length}');}
 emit(Notcubitsuceess(notes!));











      }

    }



