import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:scproject/Future/Main%20Page/main_page.dart';

import '../../Future/Chat Screens/chat_main.dart';
import '../../Future/Profile Screen/profile_page.dart';

class Bottombar extends StatelessWidget {
  final int indexmenu;
  const Bottombar({
    Key? key,
    required this.indexmenu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.grey.withOpacity(0.1),
        buttonBackgroundColor: const Color(0xFFF2F5C8),
        height: 50,
        items: const <Widget>[
          Icon(Icons.person, size: 28, color: Color(0xFF219F94)),
          Icon(Icons.chat_bubble_outline, size: 26, color: Color(0xFF219F94)),
          Icon(Icons.map_sharp, size: 26, color: Color(0xFF219F94)),
        ],
        animationDuration: const Duration(microseconds: 200),
        index: indexmenu,
        animationCurve: Curves.bounceInOut,
        onTap: (index) {
          debugPrint("Current Index is $index");
          switch (index) {
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));

              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChatHomePage()));
              break;
            case 2:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => mapsPage()));

              break;
          }
        },
      ),
    );
  }
}
