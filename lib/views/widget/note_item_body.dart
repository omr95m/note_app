import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tharwat_npte_app/views/edite_Note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 16,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xfff7c777)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text('Flutter Tips',
                  style: const TextStyle(color: Colors.black, fontSize: 30)),
              subtitle: Text(
                'Build your creare With Omar mohammad',
                style: TextStyle(
                    color: Colors.black.withOpacity(.4), fontSize: 20),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 26.0),
              child: Text('April 29/2024',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.4), fontSize: 17)),
            )
          ],
        ),
      ),
    );
  }
}
