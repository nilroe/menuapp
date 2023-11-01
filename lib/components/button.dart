import 'package:flutter/material.dart';
import 'package:menuapp/temas/colors.dart';

class BotonEstandar extends StatelessWidget {
  final String texto;
  final void Function() onTap;
  final IconData icono;

  const BotonEstandar({
    super.key,
    required this.texto,
    required this.onTap,
    required this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: colorSecundario,
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              texto,
              style: TextStyle(
                color: colorTextoPrimario,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 10),
            Icon(
              icono,
              color: colorTextoPrimario,
            )
          ],
        ),
      ),
    );
  }
}
