import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class LoveNavBar extends StatelessWidget {
  const LoveNavBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: GNav(
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.black,
          tabBackgroundColor: Color(0xffffa31a),
          gap: 8,
          onTabChange: (index) {
            print(index);
          },
          padding: EdgeInsets.all(10),
          tabs: [
            GButton(icon: Icons.person, text: 'Home'),
            GButton(icon: Icons.favorite, text: 'Favorite'),
            GButton(icon: Icons.chat_bubble, text: 'Chat'),
            GButton(icon: Icons.settings, text: 'Settings'),
          ],
        ),
      ),
    );
  }
}
