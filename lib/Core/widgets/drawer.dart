import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scproject/Future/Main%20Page/main_page.dart';
import 'package:scproject/Future/Profile%20Screen/profile_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _drawerIconSize = 24;
    double _drawerFontSize = 17;

    return Drawer(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: const [
              0.0,
              1.0
            ],
                colors: [
              Theme.of(context).primaryColor.withOpacity(0.2),
              Theme.of(context).accentColor.withOpacity(0.5),
            ])),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1.0],
                  colors: [
                    Theme.of(context).primaryColor,
                    Theme.of(context).accentColor,
                  ],
                ),
              ),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 5, color: Colors.white),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 20,
                            offset: Offset(5, 5),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.person,
                        size: 80,
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Gülten Meriç'),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home_outlined,
                size: _drawerIconSize,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Ana Sayfa',
                style: TextStyle(
                    fontSize: 17, color: Theme.of(context).primaryColor),
              ),
              onTap: () {
//
// Ayarlar Sayfası Yapılacak
//
              },
            ),
            Divider(
              color: Theme.of(context).primaryColor,
              height: 1,
            ),
            ListTile(
              leading: Icon(
                Icons.chat_bubble_outline,
                size: _drawerIconSize,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Mesajlar',
                style: TextStyle(
                    fontSize: 17, color: Theme.of(context).primaryColor),
              ),
              onTap: () {
//
// Ayarlar Sayfası Yapılacak
//
              },
            ),
            Divider(
              color: Theme.of(context).primaryColor,
              height: 1,
            ),
            ListTile(
              leading: Icon(Icons.settings,
                  size: _drawerIconSize, color: Theme.of(context).primaryColor),
              title: Text(
                'Ayarlar',
                style: TextStyle(
                    fontSize: _drawerFontSize,
                    color: Theme.of(context).primaryColor),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
            ),
            Divider(
              color: Theme.of(context).primaryColor,
              height: 1,
            ),
            ListTile(
              leading: Icon(Icons.person_outline_rounded,
                  size: _drawerIconSize, color: Theme.of(context).primaryColor),
              title: Text(
                'Profil',
                style: TextStyle(
                    fontSize: _drawerFontSize,
                    color: Theme.of(context).primaryColor),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => mapsPage()));
              },
            ),
            Divider(
              color: Theme.of(context).primaryColor,
              height: 1,
            ),
            ListTile(
              leading: Icon(
                Icons.map,
                size: _drawerIconSize,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Etkinlikler',
                style: TextStyle(
                    fontSize: _drawerFontSize,
                    color: Theme.of(context).primaryColor),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => mapsPage()));
              },
            ),
            Divider(
              color: Theme.of(context).primaryColor,
              height: 1,
            ),
            Divider(
              color: Theme.of(context).primaryColor,
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
