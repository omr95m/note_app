// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tharwat_npte_app/views/widget/coustomIconSearch.dart';

class CoustomAppBar extends StatelessWidget {
  final title;
  final IconData icon;
  const CoustomAppBar({super.key, this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28),
        ),
        const Spacer(),
        SearchWidget(
          icon: icon,
        )
      ],
    );
  }
}
