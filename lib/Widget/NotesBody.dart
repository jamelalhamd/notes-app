
import 'package:flutter/material.dart';
import 'package:tharwat2/Widget/NotesAppBar.dart';
import 'package:tharwat2/Widget/resublewidget.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:EdgeInsets.symmetric(horizontal: 24) ,
      child: Column(
        children: [
          SizedBox(height: 25),


          CustomAppbar(title: 'Note', icon: Icons.search),

          Expanded(child: Notelistview()),


        ],
      ),
    );
  }
}



