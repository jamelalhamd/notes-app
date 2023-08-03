import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/addnot/addnote_cubit.dart';

class Coloritem extends StatefulWidget {
  const Coloritem({super.key, required this.index, required this.isactive});
  final bool isactive;
  final int index;

  @override
  State<Coloritem> createState() => _ColoritemState();
}

class _ColoritemState extends State<Coloritem> {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: widget.isactive ? CircleAvatar(
              backgroundColor: Colors.white,
              radius: 38,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: colorslist[widget.index],
              ),
            )
          : CircleAvatar(
              radius: 38,
              backgroundColor: colorslist[widget.index],


            ),
    );
  }
}

class ColorsListview extends StatefulWidget {
  const ColorsListview({super.key});


  @override
  State<ColorsListview> createState() => _ColorsListviewState();
}

class _ColorsListviewState extends State<ColorsListview> {


  int current_index = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 8),
      child: SizedBox(
        height: 38 * 2,
        width: double.infinity,
        child: ListView.builder(
          itemBuilder: (context, index) =>
              GestureDetector(
                  onTap: (){
                    current_index=index;
                 BlocProvider.of<AddnoteCubit>(context).color=colorslist[index];
                    setState(() {

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


List<Color> colorslist = const [
Color(0xffFBF8CC),
  Color(0xffFDE4CF),
  Color(0xffFFCFD2),
  Color(0xffF1C0E8),
  Color(0xffCFBAF0),
  Color(0xffA3C4F3),
  Color(0xff90DBF4),
  Color(0xff957fef),
  Color(0xff5aa9e6),
  Color(0xffff6392),
  Color(0xff60d394),
  Color(0xff8EECF5),
  Color(0xff98F5E1),
  Color(0xffB9FBC0),
  Color(0xfff9f9f9),
  Color(0xffded6d1),

  Color(0xffffe45e),
  Color(0xffccd5ae),

];