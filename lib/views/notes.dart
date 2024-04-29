import 'package:flutter/material.dart';
import 'package:tharwat_npte_app/views/widget/addNoteButton.dart';
import 'package:tharwat_npte_app/views/widget/note_App_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNoteButtonSheet();
              });
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: const NotesAppBody(),
    );
  }
}
