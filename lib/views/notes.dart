import 'package:flutter/material.dart';
import 'package:tharwat_npte_app/constant.dart';
import 'package:tharwat_npte_app/views/widget/addNoteButton.Sheet.dart';
import 'package:tharwat_npte_app/views/widget/note_App_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kprimarycolor,
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return const AddNoteButtonSheet();
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const NotesAppBody(),
    );
  }
}
