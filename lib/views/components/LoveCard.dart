import 'package:flutter/material.dart';

class MatchButton extends StatelessWidget {

  final String texto;
  final Widget? icono;
  final Color? colorin;

  const MatchButton({super.key, required this.texto, required this.colorin, this.icono,});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 40,
          width: 70,
          decoration: BoxDecoration(
              color:  colorin,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: Color(0xFFC49C59),
              )
          ),
          child: Center(
            child: Text(texto,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                fontFamily: 'Monse',
              ),),
          ),
        )
      ],
    );
  }
}