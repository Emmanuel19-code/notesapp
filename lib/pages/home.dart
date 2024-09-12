import 'package:flutter/material.dart';
import 'package:notesapp/components/note.dart';
import 'package:notesapp/custom_classes/note.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<NoteData> notes = [
      NoteData(
          title: "Read a book",
          date: "September 1, 2024",
          content: "Notes about reading a book.",
          color: "green"),
      NoteData(
          title: "Buy groceries",
          date: "September 2, 2024",
          content: "List of groceries to buy.",
          color: "yellow"),
      NoteData(
          title: "Finish project",
          date: "September 3, 2024",
          content: "Complete the final project for class.",
          color: "blueaccent"),
      NoteData(
          title: "Call the bank",
          date: "September 4, 2024",
          content: "Discuss loan options.",
          color: "pink"),
      NoteData(
          title: "Meeting with team",
          date: "September 5, 2024",
          content: "Discuss project milestones.",
          color: "yellow"),
      NoteData(
          title: "Plan weekend trip",
          date: "September 6, 2024",
          content: "Organize trip itinerary.",
          color: "green"),
      NoteData(
          title: "Submit assignment",
          date: "September 7, 2024",
          content: "Submit the assignment before the deadline.",
          color: "pink"),
      NoteData(
          title: "Visit the dentist",
          date: "September 8, 2024",
          content: "Annual dental checkup.",
          color: "blueaccent"),
      NoteData(
          title: "Read research paper",
          date: "September 9, 2024",
          content: "Review the research paper for the project.",
          color: "green"),
      NoteData(
          title: "Plan presentation",
          date: "September 10, 2024",
          content: "Prepare slides and notes for the presentation.",
          color: "yellow"),
      NoteData(
          title: "Grocery shopping",
          date: "September 11, 2024",
          content: "Buy groceries for the week.",
          color: "pink"),
   
      NoteData(
          title: "Organize workspace",
          date: "September 15, 2024",
          content: "Clean and organize the workspace.",
          color: "blue"),

    ];
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Notepad",
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      decoration: BoxDecoration(
                          color: Colors.grey[600],
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            Container(
                              margin: const EdgeInsets.all(2),
                              child: const Icon(Icons.search,
                                  size: 20, color: Colors.grey))
                            ,
                            const SizedBox(width: 2),
                            const Expanded(
                                child: TextField(
                              decoration: InputDecoration(
                                
                                  hintText: "Search notes",
                                  border: InputBorder.none
                                  
                                  ),
                                  
                            ))
                          ]))
                ],
              ),
              const SizedBox(height: 15),
              Expanded(
                  child: ListView.builder(
                itemCount: notes.length, // Number of items
                itemBuilder: (context, index) {
                  final note = notes[index];
                  return  Note(notedata:note);
                },
              )),
            ])),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.pushNamed(context, "/newnote");
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
