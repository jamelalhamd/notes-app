import 'package:flutter/material.dart';

class Coloritem extends StatelessWidget {
  const Coloritem({super.key, required this.index, required this.isactive});
  final bool isactive;
  final int index;

  @override
  Widget build(BuildContext context) {
    List<Color> colorslist = [
      Colors.green,
      Colors.tealAccent,
      Colors.blue,
      Colors.blueAccent,
      Colors.deepOrange,
      Colors.amber,
      Colors.cyan,
      Colors.brown,
      Colors.lightGreen,
      Colors.purpleAccent,
      Colors.yellowAccent
    ];
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: isactive
          ? CircleAvatar(
              backgroundColor: Colors.white,
              radius: 38,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: colorslist[index],
              ),
            )
          : CircleAvatar(
              radius: 38,
              backgroundColor: colorslist[index],
            ),
    );
  }
}

class ColorsListview extends StatefulWidget {
  const ColorsListview({super.key, required this.isactive});
  final bool isactive;

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
                    setState(() {

                    });

                  },
                  child: Coloritem(index: index, isactive: current_index ==index, )),
          itemCount: 11,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
