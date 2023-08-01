import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharwat2/Widget/Editnotescreen.dart';
import 'package:tharwat2/Widget/NotesAppBar.dart';
import 'package:tharwat2/Widget/models/models.dart';
import 'package:tharwat2/cubit/viewnote/notcubit_cubit.dart';

class SearchCustomIcon extends StatelessWidget {

final IconData my_icon;
  double hight;
double width;

   SearchCustomIcon({required this.hight, required this.width ,required this.my_icon});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height:hight ,
      width: width,
      decoration: BoxDecoration(color: Colors.white.withOpacity(.05),
      borderRadius: BorderRadius.circular(16),


      ),
      child: Center(child: Icon(my_icon,size: 28,)),


    );
  }
}



class NoteListvieItem extends StatelessWidget {
  const NoteListvieItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        
        Navigator.push(context,MaterialPageRoute(builder: (context) =>Editnoteview() ,));
      },
      child: Container(
        padding:EdgeInsets.only(top:24,bottom: 24,left: 16 ) ,
        decoration: BoxDecoration(color: Color(note.color),
        borderRadius: BorderRadius.circular(16),



        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,

          children: [
            ListTile(


              title: Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child: Text(note.title,style: TextStyle(color: Colors.black,fontFamily:'Poppins' ,fontSize: 25 )),
              ),
              subtitle:

              Text(note.subtitle,style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 18)),
              trailing:IconButton(onPressed:(){},

                icon: Icon(Icons.delete,color: Colors.black,size: 30),

              ) ,



            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(note.date,style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(.5))),
            )
          ],
        ),

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
    return  BlocBuilder<NotcubitCubit, NotcubitState>(


  builder: (context, state) {
   BlocProvider.of<NotcubitCubit>(context).fetchAllnotes();
    List<NoteModel > notes =BlocProvider.of<NotcubitCubit>(context).notes?? [];

    return Padding(
      padding:  EdgeInsets.symmetric( vertical: 16),
      child: ListView.builder(

       padding: EdgeInsets.zero,

        itemCount:notes.length,
        //state is Notcubitsuceess ? state.notes.length:3,


          itemBuilder: (context, index) =>Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: NoteListvieItem(note: notes[index],),
          ) ,


      ),
    );
  },
);
  }
}







 class Customtextfield extends StatelessWidget {



    const Customtextfield({super.key,required this.hintext, this.maxline=1, this.onSaved});

  final String hintext;
   final int maxline;
    final void Function(String?)? onSaved;

   @override
   Widget build(BuildContext context) {


     return TextFormField(
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



const Color Kprimarycolor=Color(0xff62FCD7);


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


const kNoteBox='Note Box';
