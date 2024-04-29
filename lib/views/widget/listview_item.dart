import 'package:flutter/material.dart';
import 'package:tharwat_npte_app/views/widget/note_item_body.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: NoteItem(),
          );
        });
  }
}
