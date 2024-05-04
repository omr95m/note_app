import 'package:flutter/material.dart';
import 'package:tharwat_npte_app/views/widget/EditNoteViewBody.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(child: AddNoteForm()));
  }
}
