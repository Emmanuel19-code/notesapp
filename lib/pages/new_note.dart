import 'package:flutter/material.dart';

class CreateNote extends StatefulWidget {
  const CreateNote({Key? key}) : super(key: key);

  @override
  State<CreateNote> createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        flexibleSpace: Container(
          margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.green,
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                "Note",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "September 12, 2024 12:43",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Title",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Note something down",
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey[600]),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceAround, // Align items evenly
          children: [
            Column(mainAxisSize: MainAxisSize.min, children: [
              IconButton(
                icon: Icon(
                  Icons.image_outlined,
                  color: Colors.grey[600],
                ),
                onPressed: () {},
              ),
              Text(
                "Albums",
                style: TextStyle(color: Colors.grey[600]),
              )
            ]),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.collections_bookmark,
                    color: Colors.grey[600],
                  ),
                  onPressed: () {},
                ),
                Text("To do list", style: TextStyle(color: Colors.grey[600]))
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.grey[600],
                  ),
                  onPressed: () {},
                ),
                Text("Reminder", style: TextStyle(color: Colors.grey[600]))
              ],
            )
          ],
        ),
      ),
    );
  }
}
