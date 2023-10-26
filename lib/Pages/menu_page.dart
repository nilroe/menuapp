import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menuapp/components/button.dart';
import 'package:menuapp/models/food.dart';
import 'package:menuapp/temas/colors.dart';

import '../components/tile_comida.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List menuComidas = [
    Comida(
      nombre: 'Burrito',
      precio: '5',
      imagen: 'assets/brocheta.png',
      disponible: true,
    ),
    Comida(
      nombre: 'Hamburguesa',
      precio: '5',
      imagen: 'assets/burguer.png',
      disponible: true,
    ),
    Comida(
      nombre: 'Chuletón',
      precio: '15',
      imagen: 'assets/carne-cruda.png',
      disponible: false,
    ),
    Comida(
      nombre: 'Tallarines',
      precio: '5',
      imagen: 'assets/chinese-food.png',
      disponible: false,
    ),
    Comida(
      nombre: 'Perrito',
      precio: '5',
      imagen: 'assets/hot-dog.png',
      disponible: true,
    ),
    Comida(
      nombre: 'Salmón',
      precio: '8',
      imagen: 'assets/pez.png',
      disponible: false,
    ),
    Comida(
      nombre: 'Pizza',
      precio: '8',
      imagen: 'assets/pizza.png',
      disponible: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimarioAtenuado,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'SEGORBE FOODS - MENU',
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: colorPrimario, borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.all(25),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      'PILLA TU DESCUENTO DEL 10%',
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: colorTextoPrimario,
                      ),
                    ),
                    const SizedBox(height: 15),
                    BotonEstandar(
                      texto: 'CONSEGUIR',
                      onTap: () {},
                      descuento: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: colorSecundario),
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Nuestros Platos',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: colorPrimarioAcentuado,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: menuComidas.length,
            itemBuilder: (context, index) => TileComida(
              comida: menuComidas[index],
            ),
          ))
        ],
      ),
    );
  }
}
