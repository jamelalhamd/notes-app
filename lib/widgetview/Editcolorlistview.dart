import 'package:flutter/cupertino.dart';
import 'package:tharwat2/Widget/models/models.dart';
import 'package:tharwat2/widgetview/colors_listview.dart';
import 'package:tharwat2/widgetview/constant.dart';

class Editnotcolor extends StatefulWidget {
  const Editnotcolor({super.key, required this.note});
  final NoteModel note ;
  @override
  State<Editnotcolor> createState() => _EditnotcolorState();
}
class _EditnotcolorState extends State<Editnotcolor> {



  late int current_index ;

  @override
  void initState() {
    current_index=colorslist.indexOf(Color(widget.note.color));//context.select((the color selecyed form list
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 8),
      child:

      SizedBox(
        height: 38 * 2,
        width: double.infinity,
        child: ListView.builder(
          itemBuilder: (context, index) =>
              GestureDetector(
                  onTap: (){
                    current_index=index;

                    widget.note.color=colorslist[index].value;
                    setState(() {
                      widget.note.save();
                    });

                  },
                  child: Coloritem(index: index, isactive: current_index ==index, )),
          itemCount: colorslist.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}