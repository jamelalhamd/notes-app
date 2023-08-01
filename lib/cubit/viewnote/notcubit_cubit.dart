import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tharwat2/Widget/models/models.dart';

part 'notcubit_state.dart';

class NotcubitCubit extends Cubit<NotcubitState> {
  NotcubitCubit() : super(NotcubitInitial());
}
