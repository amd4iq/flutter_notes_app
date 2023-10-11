import 'package:flutter/material.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNotePageScreenState();
}

class _AddNotePageScreenState extends State<AddNoteScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(
            'Add Note',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          expandedHeight: 200,
        ),
        SliverToBoxAdapter()
      ],
    );
  }
}
