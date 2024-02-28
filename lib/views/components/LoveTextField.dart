import 'package:flutter/material.dart';

class LoveTextField extends StatelessWidget {
final String Placeholder;
final bool? isObscured;
final Widget? icono;
final double Wsize;
final TextEditingController? controller;

  const LoveTextField({super.key,
    this.isObscured,
    required this.Placeholder,
    this.icono,
    required this.Wsize,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: Wsize,
      child: TextField(
        controller: controller,
        obscureText: isObscured ?? false,
        decoration: InputDecoration(
          prefixIcon: icono  ?? Icon(null),
          border: OutlineInputBorder(),
          labelText: Placeholder,
        ),
      ),
    );
  }
}
