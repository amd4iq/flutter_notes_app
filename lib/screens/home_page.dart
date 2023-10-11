import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _slectedIndex = 0;

  static final List<Widget> _pageList = <Widget>[
    const Center(
      child: Text('Home'),
    ),
    const Center(
      child: Text('Add Note'),
    ),
    const Center(
      child: Text('Settings'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      body: SafeArea(
        top: true,
        left: true,
        right: true,
        bottom: true,
        child: _pageList[_slectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _slectedIndex,
        onTap: (int index) {
          setState(() {
            _slectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _slectedIndex == 0 ? Colors.blue : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: _slectedIndex == 1 ? Colors.blue : Colors.grey,
            ),
            label: 'Add Note',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: _slectedIndex == 2 ? Colors.blue : Colors.grey,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
