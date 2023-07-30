part of 'addnote_cubit.dart';

@immutable
abstract class AddnoteState {}

class AddnoteInitial extends AddnoteState {}
class AddnoteLoading extends AddnoteState {}
class Addnotesuccess extends AddnoteState {}
class Addnotefailure extends AddnoteState {
  final String error;

  Addnotefailure(this.error);
}
