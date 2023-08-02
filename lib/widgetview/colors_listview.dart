
import 'package:flutter/material.dart';

class Coloritem extends StatelessWidget {
  const Coloritem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: const CircleAvatar(
        radius: 38,
        backgroundColor: Colors.green,
      ),
    );
  }
}


class ColorsListview extends StatelessWidget {
  const ColorsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: SizedBox(
        height: 38*2,
        width:double.infinity ,
        child: ListView.builder(itemBuilder:(context, index) => const Coloritem(),

          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
