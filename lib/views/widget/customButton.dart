import 'package:flutter/material.dart';
import 'package:tharwat_npte_app/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: kprimarycolor, borderRadius: BorderRadius.circular(6)),
      child: Center(
        child: const Text(
          'Add',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
