import 'package:flutter/material.dart';
import 'package:tharwat2/Widget/NotesAppBar.dart';

import 'package:tharwat2/widgetview/textfield.dart';

class Editviewbody extends StatelessWidget {
  const Editviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 16),
          GestureDetector(
              onTap: (){Navigator.pop(context);},
              child: CustomAppbar(title: 'Edit Note',icon: Icons.edit_outlined)),
          SizedBox(height: 50),
          Customtextfield(hintext: 'Title',maxline: 1),
          SizedBox(height: 16),
          Customtextfield(hintext: 'Container',maxline: 5),


        ],
      ),
    );
  }
}