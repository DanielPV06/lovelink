import 'package:flutter/material.dart';

class MatchButton extends StatelessWidget {
  final String texto;
  final Color? colorin;



  const MatchButton({
    super.key,
    required this.texto,
    required this.colorin,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 40,
          width: 70,
          decoration: BoxDecoration(
              color: colorin,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: Colors.transparent,
              )),
          child: Center(
            child: Text(
              texto,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                fontFamily: 'Monse',
              ),
            ),
          ),
        )
      ],
    );
  }
}