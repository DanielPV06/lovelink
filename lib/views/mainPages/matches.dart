import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lovelink/views/components/PositionedText.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: BackButton(
          color: Colors.black,
        ),
      ),
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
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5)
                        )
                      ),
                    ),
                     Container(
                       child: PositionedText(textLabel: "Genero: Hombre", top: 7, left: 160, textSize: 16, width: 140, height: 60,),
                     ),
                     Container(
                       child: PositionedText(textLabel: "Edad: 22", top: 30, left: 160, textSize: 16, width: 130, height: 60,),
                     ),
                    Container(
                      child: PositionedText(textLabel: "Daniela", top: 5, left: 10, textSize: 23, width: 140, height: 160,),
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
              const Spacer(flex: 10,)
            ],
          )
        ],
      ),
    );
  }
}