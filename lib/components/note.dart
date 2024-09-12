import 'package:flutter/material.dart';
import 'package:notesapp/custom_classes/note.dart';

class Note extends StatelessWidget {
  final NoteData notedata;
  const Note({Key? key, required this.notedata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
        opacity: 0.5,
        child: Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: notedata.getColorFromName("${notedata.color}"),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${notedata.title}",
                  style: const TextStyle(fontSize: 18, color: Colors.white)),
              Text("${notedata.content}", style: const TextStyle(color: Colors.white)),
              const SizedBox(height: 15),
              Text(
                "August 24, 2024 15:59",
                style: TextStyle(color: Colors.grey[500], fontSize: 10),
              ),
            ],
          ),
        ));
  }
}
