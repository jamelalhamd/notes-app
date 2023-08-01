part of 'notcubit_cubit.dart';

@immutable
abstract class NotcubitState {}

class NotcubitInitial extends NotcubitState {}
class Notcubitloading extends NotcubitState {}
class Notcubitsuceess extends NotcubitState {


  final List<NoteModel > notes;

  Notcubitsuceess(this.notes);
}
class Notcubitfailure extends NotcubitState {

  final String error;

  Notcubitfailure(this.error);
}

