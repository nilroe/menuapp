import 'package:flutter/material.dart';
import 'food.dart';

class Tienda extends ChangeNotifier {
  final List<Comida> _menuComidas = [
    Comida(
      nombre: 'Burrito',
      precio: '5,00',
      imagen: 'assets/brocheta.png',
      detalle:
          'Nuestro delicioso burrito hecho de tortilla de trigo, con rodajas de tomate, queso feta, lechuga y pollo asado',
      gluten: true,
      lactosa: true,
      disponible: true,
    ),
    Comida(
      nombre: 'Hamburguesa',
      precio: '5,00',
      imagen: 'assets/burguer.png',
      detalle:
          'hamburguesa doble con queso, bacon, mayonesa de bacon y queso filadelfia',
      gluten: true,
      lactosa: true,
      disponible: true,
    ),
    Comida(
      nombre: 'Chuletón',
      precio: '15,00',
      imagen: 'assets/carne-cruda.png',
      detalle: 'Corte de Rubia Gallega del lomo alto',
      gluten: false,
      lactosa: false,
      disponible: false,
    ),
    Comida(
      nombre: 'Tallarines',
      precio: '5,00',
      imagen: 'assets/chinese-food.png',
      detalle:
          'Tallarines de trigo con pollo asado, tiras de pimiento, cebolla y setas shitake',
      gluten: true,
      lactosa: false,
      disponible: false,
    ),
    Comida(
      nombre: 'Perrito',
      precio: '5,00',
      imagen: 'assets/hot-dog.png',
      detalle:
          'Un clasico Americano: pan hot-dog, salchicha de cerdo, cebolla crujiente, bacon, ketchup y mostaza',
      gluten: true,
      lactosa: false,
      disponible: true,
    ),
    Comida(
      nombre: 'Salmón',
      precio: '8,00',
      imagen: 'assets/pez.png',
      detalle: 'Delicioso filete de salmon con patatas panaderas y cebolla',
      gluten: false,
      lactosa: false,
      disponible: false,
    ),
    Comida(
      nombre: 'Pizza',
      precio: '8,00',
      imagen: 'assets/pizza.png',
      detalle:
          'Nuestra pizza casera con base de crema agria, queso mozzarella, pollo asado, champiñones, cebolla, bacon y queso de cabra',
      gluten: true,
      lactosa: true,
      disponible: true,
    ),
  ];

  List<Comida> _carrito = [];
  List<Comida> get menuComidas => _menuComidas;
  List<Comida> get carrito => _carrito;

  void addCarrito(Comida itemComida, cantidad) {
    for (int i = 0; i < cantidad; i++) {
      _carrito.add(itemComida);
    }
    notifyListeners();
  }

  void removeCarrito(Comida comida) {
    _carrito.remove(comida);
    notifyListeners();
  }
}
