import 'package:flutter/material.dart';
import 'package:notesapp/pages/home.dart';
import 'package:notesapp/pages/new_note.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(), 
      routes: {
        "/newnote": (context) =>
            const CreateNote(), 
      },
    );
  }
}


