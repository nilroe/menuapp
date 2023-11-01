import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menuapp/Pages/menu_detail.dart';
import 'package:menuapp/components/button.dart';
import 'package:menuapp/models/tienda.dart';
import 'package:menuapp/temas/colors.dart';
import 'package:provider/provider.dart';
import '../components/tile_comida.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  void detalleTileComida(int index) {
    final tienda = context.read<Tienda>();
    final menuComidas = tienda.menuComidas;

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
    final tienda = context.read<Tienda>();
    final menuComidas = tienda.menuComidas;

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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/carrito');
            },
            icon: Icon(
              Icons.shopping_cart,
              color: colorPrimario,
            ),
          )
        ],
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
