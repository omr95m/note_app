import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:tharwat_npte_app/constant.dart';
import 'package:tharwat_npte_app/views/notes.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  // String? x;
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotesView(),
    );
  }
}
