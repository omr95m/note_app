import 'package:flutter/material.dart';
import 'package:tharwat_npte_app/views/widget/coustomAppBar.dart';
import 'package:tharwat_npte_app/views/widget/text_fild.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const CoustomAppBar(
            title: 'Edite',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          TextFild(
            text: 'Title',
            max: 1,
          ),
          const SizedBox(
            height: 5,
          ),
          TextFild(
            max: 10,
            text: 'contect',
          )
        ],
      ),
    );
  }
}
