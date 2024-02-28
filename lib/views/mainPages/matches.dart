import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lovelink/views/components/MatchButton.dart';

class Matches extends StatefulWidget {
  const Matches({super.key});

  @override
  State<Matches> createState() => _MatchesState();
}

void inputLike(){
  print("Like");
}

void inputDislike(){
  print("Dislike");
}

class _MatchesState extends State<Matches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff292929),
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
                  image: const DecorationImage(image: AssetImage("assets/tests/person4.jpg"), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.transparent),
                ),
                child:  Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5)
                        )
                      ),
                    ),
                    const Positioned(
                      top: 10,
                      left: 170,
                      child: Text(
                        'Genero: Hombre',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 30,
                      left: 170,
                      child: Text(
                        'Edad: 25',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 10,
                      left: 10,
                      child: Text(
                        'Daniel',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                      Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              child: MatchButton(colorin: Color(0xffffa31a), colorbor: Color(0xff1b1b1b), imagePath: "assets/icons/Xg.png",),
                              onTap: inputDislike,
                            ),
                            GestureDetector(
                              child: MatchButton(colorin: Color(0xFF292929), colorbor: Color(0xffffa31a), imagePath: "assets/icons/Corazon.png",),
                              onTap: inputLike,
                            )
                          ],
                        ),
                        SizedBox(height: 30,)
                      ],
                    )
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