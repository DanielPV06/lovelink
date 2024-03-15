import 'package:flutter/material.dart';
import 'package:lovelink/constants.dart';

class Config extends StatefulWidget {
  const Config({super.key});

  @override
  State<Config> createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
    );
  }
}
