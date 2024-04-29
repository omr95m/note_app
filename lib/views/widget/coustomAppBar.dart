// ignore: file_names
import 'package:flutter/widgets.dart';
import 'package:tharwat_npte_app/views/widget/coustomIconSearch.dart';

class CoustomAppBar extends StatelessWidget {
  const CoustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        SearchWidget()
      ],
    );
  }
}
