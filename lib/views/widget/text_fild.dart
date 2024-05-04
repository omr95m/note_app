import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFild extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final text;
  int max;
  void Function(String?)? onSaved;

  TextFild({super.key, required this.text, required this.max, this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is requaired';
        } else {
          return null;
        }
      },
      maxLines: max,
      decoration: InputDecoration(
        hintText: text,

        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
        // focusedBorder: BuildBorder(kprimarycolor)
      ),
    );
  }

  // ignore: non_constant_identifier_names
  OutlineInputBorder BuildBorder([colorr]) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: colorr ?? Colors.white));
}
