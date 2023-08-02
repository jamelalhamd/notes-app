import 'package:flutter/material.dart';
import 'package:tharwat2/Widget/models/models.dart';

import 'package:tharwat2/widgetview/Editview.dart';

class Editnoteview extends StatelessWidget {
   const Editnoteview({super.key, required this.note});
 final NoteModel note;
  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body: Editviewbody(notes: note),

    );
  }
}
