import 'package:flutter/material.dart';
import 'package:tharwat2/widgetview/constant.dart';

class  CostumButtom extends StatelessWidget {
  const  CostumButtom({super.key, this.onTap, this.isloding=false});

  final void Function()? onTap;
  final bool isloding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        decoration: BoxDecoration(color: Kprimarycolor,borderRadius: BorderRadius.circular(16)),

        width: MediaQuery.of(context).size.width,
        height: 60,
        child: Center(child:
        isloding ?SizedBox(height: 24,width: 24,
            child: const CircularProgressIndicator( color: Colors.black ,)) :const Text(" Add The Note",
          style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}