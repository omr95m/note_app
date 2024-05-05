import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:tharwat_npte_app/constant.dart';
import 'package:tharwat_npte_app/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:tharwat_npte_app/models/notemodel.dart';
import 'package:tharwat_npte_app/views/notes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  Hive.registerAdapter(NoteModelAdapter());

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AddNoteCubit(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
          home: const NotesView(),
        ));
  }
}
