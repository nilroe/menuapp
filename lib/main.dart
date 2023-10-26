import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Pages/main_page.dart';
import 'Pages/menu_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      routes: {
        '/intro': (context) => const MainPage(),
        '/menu': (context) => const MenuPage(),
      },
    );
  }
}
