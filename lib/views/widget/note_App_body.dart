// ignore: file_names
import 'package:flutter/material.dart';

import 'package:tharwat_npte_app/views/widget/coustomAppBar.dart';

import 'package:tharwat_npte_app/views/widget/listview_item.dart';

class NotesAppBody extends StatelessWidget {
  const NotesAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CoustomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(child: ListViewItem()),
        ],
      ),
    );
  }
}
