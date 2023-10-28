import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menuapp/components/button.dart';
import 'package:menuapp/temas/colors.dart';

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
        backgroundColor: colorPrimario,
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 25),
              Text(
                "SEGORBE FOODS",
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 28, color: colorTextoPrimario),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('assets/pizza.png'),
              ),
              const SizedBox(height: 25),
              Text("PIDE, RECOGE Y A DISFRUTAR",
                  style: GoogleFonts.dmSerifDisplay(
                      fontSize: 36, color: colorTextoPrimario)),
              const SizedBox(height: 10),
              Text("Tu sitio de cocina casera de confianza",
                  style: GoogleFonts.dmSerifDisplay(
                      fontSize: 16, color: colorTextoPrimario, height: 2)),
              const SizedBox(height: 10),
              BotonEstandar(
                texto: "PEDIR AHORA",
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/menu',
                  );
                },
                icono: Icons.arrow_forward,
              ),
            ],
          ),
        ));
  }
}
