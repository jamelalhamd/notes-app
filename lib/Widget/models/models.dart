import 'package:hive/hive.dart';
part 'models.g.dart';  //too add name packe(page  that  contains the class) that will generate spater by flutter packages pub run build_runner build

@HiveType(typeId: 0)   //2- add Hive type

class NoteModel extends HiveObject {// 1- extends HiveObject  from


@HiveField(0)

  String title;
@HiveField(1)
  String subtitle;
@HiveField(2)
final String date;
@HiveField(3)
   int color;

  NoteModel({required this.title, required this.subtitle,required this.date,required this.color});
}