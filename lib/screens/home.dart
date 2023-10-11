import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_navbar.dart';
import 'package:notes/widgets/notes_view.dart';

class NoteHomeScreen extends StatefulWidget {
  const NoteHomeScreen({super.key});

  @override
  State<NoteHomeScreen> createState() => _NoteHomeScreenState();
}

class _NoteHomeScreenState extends State<NoteHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            CustomNavBar(),
            Expanded(child: NotesList()),
          ],
        ),
      ),
    );
  }
}
