import 'package:flutter/material.dart';
import 'package:tharwat2/Widget/resublewidget.dart';

class  CustomAppbar extends StatelessWidget {
  const  CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Note',style: TextStyle(color: Colors.white,
            fontSize: 28,



        ),





        ),
            Spacer(),
        SearchCustomIcon(hight: 46,width: 46),
      ],
    );
  }
}