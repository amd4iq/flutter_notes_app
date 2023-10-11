import 'package:flutter/material.dart';
import 'package:notes/screens/home.dart';
import 'package:notes/screens/main_page.dart';
import 'package:notes/widgets/notes_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.dark,
          useMaterial3: true,
        ),
        home: const MainPage(),
        routes: {
          '/home_screen': (context) => const NoteHomeScreen(),
          '/main_page': (context) => const MainPage(),
        });
  }
}
