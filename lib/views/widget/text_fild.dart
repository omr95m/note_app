import 'package:flutter/material.dart';
import 'package:tharwat_npte_app/constant.dart';

class TextFild extends StatelessWidget {
  final text;
  int max;

  TextFild({super.key, required this.text, required this.max});

  @override
  Widget build(BuildContext context) {
    return TextField(
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

  OutlineInputBorder BuildBorder([colorr]) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: colorr ?? Colors.white));
}
