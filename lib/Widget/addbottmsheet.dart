import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'package:tharwat2/Widget/models/models.dart';

import 'package:tharwat2/cubit/addnot/addnote_cubit.dart';
import 'package:tharwat2/cubit/viewnote/notcubit_cubit.dart';
import 'package:tharwat2/widgetview/custombutton.dart';
import 'package:tharwat2/widgetview/textfield.dart';

class Addshowbotomsheet extends StatelessWidget {
  const Addshowbotomsheet({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (context) => AddnoteCubit(),
      child: BlocConsumer<AddnoteCubit, AddnoteState>(
        listener: (context, state) {
          if (state is Addnotesuccess) {
            Navigator.pop(context);
          }

          if (state is Addnotefailure) {


          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddnoteLoading ?true:false,

            child: Padding(

              padding:  EdgeInsets.only(left: 16, top: 16,right: 16,bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
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


          BlocBuilder<AddnoteCubit, AddnoteState>(
            builder: (context, state) {
              return CostumButtom(
                isloding:state is AddnoteLoading ? true:false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var currentdate=DateTime.now();

                    // var formatedcurrentdate=DateFormat.yMd().format(currentdate);
                    var formatedcurrentdate=DateFormat('dd.M.yyyy').format(currentdate);
                    var notmodels = NoteModel(title: title!,
                      subtitle: subtitel!,
                      color: Colors.blue.value,
                      date: formatedcurrentdate,
                    );


                    BlocProvider.of<AddnoteCubit>(context).addNote(notmodels);
                   BlocProvider.of<NotcubitCubit>(context).fetchAllnotes();
                  }

                  else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {

                    });
                  }
                },);
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}