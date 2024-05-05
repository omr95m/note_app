import 'package:flutter/material.dart';
import 'package:tharwat_npte_app/views/widget/coustomAppBar.dart';
import 'package:tharwat_npte_app/views/widget/customButton.dart';
import 'package:tharwat_npte_app/views/widget/text_fild.dart';

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
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
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
            text: 'title',
            onSaved: (value) {
              title = value;
            },
            max: 1,
          ),
          const SizedBox(
            height: 5,
          ),
          TextFild(
            max: 10,
            text: 'contect',
            onSaved: (value) {
              subtitle = value;
            },
          ),
          const SizedBox(
            height: 32,
          ),
          CustomButton(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}
