import 'package:flutter/material.dart';

class SearchCustomIcon extends StatelessWidget {


  double hight;
double width;

   SearchCustomIcon({required this.hight, required this.width});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height:hight ,
      width: width,
      decoration: BoxDecoration(color: Colors.white.withOpacity(.05),
      borderRadius: BorderRadius.circular(16),


      ),
      child: Center(child: Icon(Icons.search,size: 28,)),


    );
  }
}



class NoteListvieItem extends StatelessWidget {
  const NoteListvieItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding:EdgeInsets.only(top:24,bottom: 24,left: 16 ) ,
      decoration: BoxDecoration(color: Color(0xffFFCC80),
      borderRadius: BorderRadius.circular(16),



      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,

        children: [
          ListTile(


            title: Padding(
              padding: const EdgeInsets.only(top: 16,bottom: 16),
              child: Text('Flutter Tips',style: TextStyle(color: Colors.black,fontFamily:'Poppins' ,fontSize: 25 )),
            ),
            subtitle:

            Text('Build your carres with jamel alhamd',style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 18)),
            trailing:IconButton(onPressed:(){},

              icon: Icon(Icons.delete,color: Colors.black,size: 30),

            ) ,



          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text('Janyary 23,2023',style: TextStyle(
                fontSize: 18,
                color: Colors.black.withOpacity(.5))),
          )
        ],
      ),

    );
  }
}

class  Notelistview extends StatelessWidget {
    Notelistview({super.key});

 final date=const [
   Colors.blue,
   Colors.amber,
   Colors.deepOrangeAccent,
   Colors.greenAccent


 ];
int i=0;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric( vertical: 16),
      child: ListView.builder(
       padding: EdgeInsets.zero,

        itemCount: 50,


          itemBuilder: (context, index) =>Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: NoteListvieItem(),
          ) ,


      ),
    );
  }
}

 class  Addshowbotomsheet extends StatelessWidget {
   const  Addshowbotomsheet({super.key});

   @override
   Widget build(BuildContext context) {
     return  Container(
       child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 16),
         child: Column(
           children: [
             SizedBox(height: 32),
             Customtextfield(),
           ],
         ),
       ),


     );
   }
 }

 class Customtextfield extends StatelessWidget {
   const Customtextfield({super.key});

   @override
   Widget build(BuildContext context) {

     return TextField(

       cursorColor:Kprimarycolor,


       decoration: InputDecoration(

         hintText: "Title",
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



const Color Kprimarycolor=Color(0xff62FCD7);