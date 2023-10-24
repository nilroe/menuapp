import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              const SizedBox(height: 25),
              Text(
                "SEGORBE FOODS",
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 28, color: Colors.white),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('assets/pizza.png'),
              )
            ],
          ),
        ));
  }
}
