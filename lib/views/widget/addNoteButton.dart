import 'package:flutter/material.dart';
import 'package:tharwat_npte_app/constant.dart';
import 'package:tharwat_npte_app/constant.dart';
import 'package:tharwat_npte_app/views/widget/text_fild.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          TextFild(
            text: 'Titl',
            max: 1,
          ),
          const SizedBox(
            height: 16,
          ),
          TextFild(text: 'Contect', max: 5)
        ],
      ),
    );
  }
}
