import 'package:flutter/material.dart';

import 'package:tharwat2/widgetview/search_icon.dart';

class  CustomAppbar extends StatelessWidget {
  const  CustomAppbar({super.key,required this.title,required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: TextStyle(color: Colors.white,
            fontSize: 28,



        ),





        ),
            Spacer(),
        SearchCustomIcon(hight: 46,width: 46, my_icon: icon,),
      ],
    );
  }
}