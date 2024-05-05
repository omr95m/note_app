import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:tharwat_npte_app/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:tharwat_npte_app/views/widget/addFormFiels.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
            child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is AddNoteFailure) {
              print('faield ${state.erorrMessage}');
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: AddNoteForm());
          },
        )));
  }
}
