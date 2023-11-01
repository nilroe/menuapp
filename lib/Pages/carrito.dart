import 'package:flutter/material.dart';
import 'package:menuapp/components/button.dart';
import 'package:menuapp/models/food.dart';
import 'package:menuapp/models/tienda.dart';
import 'package:menuapp/temas/colors.dart';
import 'package:provider/provider.dart';

class CarritoPage extends StatelessWidget {
  const CarritoPage({super.key});

  void borrarDelCarrito(Comida comida, BuildContext context) {
    final tienda = context.read<Tienda>();
    tienda.removeCarrito(comida);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Tienda>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: colorPrimario,
        appBar: AppBar(
          title: const Text("Carrito"),
          elevation: 0,
          backgroundColor: colorPrimario,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: value.carrito.length,
                itemBuilder: (context, index) {
                  final Comida comida = value.carrito[index];
                  final String nombreComida = comida.nombre;
                  final String precioComida = comida.precio;
                  return Container(
                    decoration: BoxDecoration(
                      color: colorSecundarioAtenuado,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: ListTile(
                      title: Text(
                        nombreComida,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: colorTextoSecundario,
                        ),
                      ),
                      subtitle: Text(
                        "$precioComida€",
                        style: TextStyle(
                            color: colorPrimarioAcentuado, fontSize: 14),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: colorPrimarioAcentuado),
                        onPressed: () => borrarDelCarrito(comida, context),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: BotonEstandar(
                texto: "REALIZAR PEDIDO",
                onTap: () {},
                icono: Icons.payment,
              ),
            )
          ],
        ),
      ),
    );
  }
}
