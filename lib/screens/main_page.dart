import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _slectedIndex = 0;

  void _setSelectedIndex(int index) {
    setState(() {
      _slectedIndex = index;
    });
  }

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
        fixedColor: Colors.blue,
        currentIndex: _slectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _setSelectedIndex,
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
