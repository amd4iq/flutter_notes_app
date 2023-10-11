import 'package:flutter/material.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNotePageScreenState();
}

class _AddNotePageScreenState extends State<AddNoteScreen> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Note Title',
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          TextField(
            textInputAction: TextInputAction.newline,
            strutStyle: StrutStyle(
              height: 1.5,
            ),
            maxLines: 15,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Note Title',
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
