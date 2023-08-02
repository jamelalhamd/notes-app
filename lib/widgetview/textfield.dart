import 'package:flutter/material.dart';
import 'package:tharwat2/widgetview/constant.dart';

class Customtextfield extends StatelessWidget {



  const Customtextfield({super.key,required this.hintext, this.maxline=1, this.onSaved, this.onChanged});

  final String hintext;
  final int maxline;
  final  Function(String?)? onSaved;
  final  Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {


    return TextFormField(

      onChanged:onChanged ,


      onSaved: onSaved,
      validator: (value)

      {
        if(value?.isEmpty ?? true){ return ' Fiels is requird';}

        else {return null;}
      },
      cursorColor:Kprimarycolor,
      maxLines: maxline,


      decoration: InputDecoration(


        hintText: hintext,
        hintStyle: TextStyle(color: Kprimarycolor),

        border: buildOutlineInputBorderCustomer(

        ),

        enabledBorder: buildOutlineInputBorderCustomer(),
        focusedBorder: buildOutlineInputBorderCustomer2(),

      ),
    );
  }


  OutlineInputBorder buildOutlineInputBorderCustomer() {
    return OutlineInputBorder(borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: Colors.white));
  }

  OutlineInputBorder buildOutlineInputBorderCustomer2() {
    return OutlineInputBorder(borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: Kprimarycolor));
  }

  OutlineInputBorder buildOutlineInputBorderCustomer1() {
    return OutlineInputBorder(borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: Kprimarycolor));
  }
}