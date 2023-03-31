import 'package:flutter/material.dart';
import 'package:scproject/Future/Profile%20Screen/profile_page.dart';

class myAppbar extends StatelessWidget with PreferredSizeWidget {
  final String text;
  const myAppbar({
    Key? key,
    required this.text,
  }) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        text,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      elevation: 0.5,
      iconTheme: const IconThemeData(color: Colors.white),
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
              Theme.of(context).primaryColor,
              Theme.of(context).accentColor,
            ])),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(
            top: 16,
            right: 16,
          ),
          child: Stack(
            children: <Widget>[
              GestureDetector(
                  child: Icon(Icons.person),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilePage()));
                  }),
            ],
          ),
        )
      ],
    );
  }
}
