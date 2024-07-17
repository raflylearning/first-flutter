import 'package:flutter/material.dart';
import 'screen/about.dart';
import 'screen/home-screen.dart';
import 'screen/wisata.dart';
import 'screen/film.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "home": (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
        '/wisata': (context) => ListWisataScreen(),
        '/film': (context) => ListFilmScreen()
      },
      initialRoute: "home",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Belajar Flutter'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: HomeScreen(),
        ),
      ),
    );
  }
}
