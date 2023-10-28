class Comida {
  String nombre;
  String precio;
  String imagen;
  String detalle;
  List alergenos;
  bool disponible;

  Comida({
    required this.nombre,
    required this.precio,
    required this.imagen,
    required this.detalle,
    required this.alergenos,
    required this.disponible,
  });
}
/*
String get _nombre => nombre;
String get _precio => precio;
String get _imagen => imagen;
*/