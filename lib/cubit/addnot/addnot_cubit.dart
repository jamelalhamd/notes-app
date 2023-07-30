import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'addnot_state.dart';

class AddnotCubit extends Cubit<AddnotState> {
  AddnotCubit() : super(AddnotInitial());
}
