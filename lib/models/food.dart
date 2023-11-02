class Comida {
  String nombre;
  String precio;
  String imagen;
  String detalle;
  bool gluten;
  bool lactosa;
  bool disponible;

  Comida({
    required this.nombre,
    required this.precio,
    required this.imagen,
    required this.detalle,
    required this.gluten,
    required this.lactosa,
    required this.disponible,
  });
}
/*
String get _nombre => nombre;
String get _precio => precio;
String get _imagen => imagen;
*/