import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menuapp/models/food.dart';
import 'package:menuapp/temas/colors.dart';

class TileComida extends StatelessWidget {
  final Comida comida;
  const TileComida({super.key, required this.comida});

  String getDisponibilidad(bool disp) {
    if (disp == true) {
      return '¡DISPONIBLE!';
    } else {
      return 'SE NOS HA ACABADO YA';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorTextoPrimario,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.fromLTRB(50, 0, 50, 25),
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Image.asset(
            comida.imagen,
            height: 120,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                comida.nombre,
                style: GoogleFonts.dmSerifDisplay(fontSize: 20),
              ),
              Text(
                ' ' + comida.precio,
                style: GoogleFonts.dmSerifDisplay(fontSize: 20),
              ),
              Icon(
                Icons.euro_symbol_outlined,
                size: 10,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(getDisponibilidad(comida.disponible)),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
