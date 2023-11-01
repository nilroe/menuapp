import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menuapp/components/button.dart';
import 'package:menuapp/models/food.dart';
import 'package:menuapp/temas/colors.dart';
import 'package:provider/provider.dart';

import '../models/tienda.dart';

class DetalleTileComida extends StatefulWidget {
  final Comida comida;

  const DetalleTileComida({super.key, required this.comida});

  @override
  State<DetalleTileComida> createState() => _DetalleTileComidaState();
}

class _DetalleTileComidaState extends State<DetalleTileComida> {
  //
  int cantidad = 0;

  void restarCantidad() {
    setState(() {
      if (cantidad > 0) {
        cantidad--;
      }
    });
  }

  void sumarCantidad() {
    setState(() {
      if (cantidad < 15) {
        cantidad++;
      }
    });
  }

  void addCesta() {
    if (cantidad > 0) {
      final tienda = context.read<Tienda>();
      tienda.addCarrito(widget.comida, cantidad);
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          backgroundColor: colorPrimario,
          content: Text(
            "Añadido al carrito",
            style: TextStyle(
              color: colorTextoPrimario,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          actions: [
            Center(
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.done,
                    color: Colors.greenAccent,
                  )),
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: colorPrimarioAcentuado,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: ListView(
                children: [
                  Image.asset(
                    widget.comida.imagen,
                    height: 200,
                  ),
                  const SizedBox(height: 50),
                  Text(
                    widget.comida.nombre,
                    style: GoogleFonts.dmSerifDisplay(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    widget.comida.detalle,
                    style: TextStyle(
                      color: colorPrimario,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: colorPrimario,
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Precio: ${widget.comida.precio}€",
                      style: TextStyle(
                        color: colorTextoPrimario,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: colorSecundario, shape: BoxShape.circle),
                          child: IconButton(
                            onPressed: restarCantidad,
                            icon: Icon(
                              Icons.remove,
                              color: colorTextoPrimario,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                          child: Center(
                            child: Text(
                              cantidad.toString(),
                              style: TextStyle(
                                color: colorTextoPrimario,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: colorSecundario, shape: BoxShape.circle),
                          child: IconButton(
                            onPressed: sumarCantidad,
                            icon: Icon(
                              Icons.add,
                              color: colorTextoPrimario,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                BotonEstandar(
                  texto: 'Añadir a la cesa',
                  onTap: addCesta,
                  icono: Icons.add_shopping_cart,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
