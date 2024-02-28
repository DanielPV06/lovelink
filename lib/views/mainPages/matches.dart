import 'package:flutter/material.dart';
import 'package:lovelink/views/components/MatchButton.dart';

class Matches extends StatefulWidget {
  const Matches({super.key});

  @override
  State<Matches> createState() => _MatchesState();
}

class _MatchesState extends State<Matches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: double.infinity,),
              const Spacer(flex: 2),
              Container(
                width: 300,
                height: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/tests/person1.png"), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MatchButton(texto: 'X', colorin: Colors.red),
                        MatchButton(texto: '✓', colorin: Colors.green)
                      ],
                    ),
                    const SizedBox(height: 30,),
                  ],

                ),
              ),
              const Spacer(flex: 4,)
            ],
          )
        ],
      ),
    );
  }
}