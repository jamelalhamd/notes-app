import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:tharwat2/Widget/resublewidget.dart';
import 'package:tharwat2/cubit/addnot/addnote_cubit.dart';

class Addshowbotomsheet extends StatelessWidget {
const  Addshowbotomsheet({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      child:Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(


          child: BlocConsumer<AddnoteCubit, AddnoteState>(
            listener: (context, state) {
              if(state is Addnotesuccess )
                {
                  Navigator.pop(context);

                }

              if(state is Addnotefailure )
              {


              }
            },
            builder: (context, state) {
              return ModalProgressHUD

                (
                  inAsyncCall:state is AddnoteLoading ?true:false ,
                  child: AddNoteForm());
            },
          ),
        ),
      ),


    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();

}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitel;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formkey,
      child: Column(
        children: [
          SizedBox(height: 32),
          Customtextfield(hintext: "Titel",

              onSaved: (value) {
                title = value;
              }),
          const SizedBox(height: 16),
          Customtextfield(hintext: "containts", maxline: 5,

              onSaved: (value) {
                subtitel = value;
              }
          ),
          const SizedBox(height: 20),
          CostumButtom(onTap: () {
            if (formkey.currentState!.validate()) {
              formkey.currentState!.save();
            }

            else {
              autovalidateMode = AutovalidateMode.always;
              setState(() {

              });
            }
          },),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}