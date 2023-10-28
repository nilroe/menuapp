import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menuapp/Pages/menu_detail.dart';
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
      detalle:
          'Nuestro delicioso burrito hecho de tortilla de trigo, con rodajas de tomate, queso feta, lechuga y pollo asado',
      alergenos: ['Gluten', 'Lactosa'],
      disponible: true,
    ),
    Comida(
      nombre: 'Hamburguesa',
      precio: '5',
      imagen: 'assets/burguer.png',
      detalle:
          'hamburguesa doble con queso, bacon, mayonesa de bacon y queso filadelfia',
      alergenos: ['Gluten', 'Lactosa'],
      disponible: true,
    ),
    Comida(
      nombre: 'Chuletón',
      precio: '15',
      imagen: 'assets/carne-cruda.png',
      detalle: 'Corte de Rubia Gallega del lomo alto',
      alergenos: [],
      disponible: false,
    ),
    Comida(
      nombre: 'Tallarines',
      precio: '5',
      imagen: 'assets/chinese-food.png',
      detalle:
          'Tallarines de trigo con pollo asado, tiras de pimiento, cebolla y setas shitake',
      alergenos: ['Gluten'],
      disponible: false,
    ),
    Comida(
      nombre: 'Perrito',
      precio: '5',
      imagen: 'assets/hot-dog.png',
      detalle:
          'Un clasico Americano: pan hot-dog, salchicha de cerdo, cebolla crujiente, bacon, ketchup y mostaza',
      alergenos: ['Gluten'],
      disponible: true,
    ),
    Comida(
      nombre: 'Salmón',
      precio: '8',
      imagen: 'assets/pez.png',
      detalle: 'Delicioso filete de salmon con patatas panaderas y cebolla',
      alergenos: [],
      disponible: false,
    ),
    Comida(
      nombre: 'Pizza',
      precio: '8',
      imagen: 'assets/pizza.png',
      detalle:
          'Nuestra pizza casera con base de crema agria, queso mozzarella, pollo asado, champiñones, cebolla, bacon y queso de cabra',
      alergenos: ['Gluten', 'Lactosa'],
      disponible: true,
    ),
  ];

  void detalleTileComida(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetalleTileComida(
          comida: menuComidas[index],
        ),
      ),
    );
  }

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
                      icono: Icons.discount_outlined,
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
                      borderSide: BorderSide(color: colorPrimario),
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
              toque: () => detalleTileComida(index),
            ),
          ))
        ],
      ),
    );
  }
}
