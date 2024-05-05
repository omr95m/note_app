import 'package:flutter/material.dart';
import 'package:tharwat_npte_app/views/widget/addFormFiels.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
