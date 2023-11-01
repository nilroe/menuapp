import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Pages/carrito.dart';
import 'Pages/main_page.dart';
import 'Pages/menu_page.dart';
import 'models/tienda.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Tienda(),
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
      routes: {
        '/intro': (context) => const MainPage(),
        '/menu': (context) => const MenuPage(),
        '/carrito': (context) => const CarritoPage(),
      },
    );
  }
}
