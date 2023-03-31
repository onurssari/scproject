import 'package:flutter/material.dart';
import 'package:scproject/Core/widgets/appbar.dart';

import '../../Core/widgets/bottombar.dart';
import '../../Core/widgets/drawer.dart';

class ChatHomePage extends StatefulWidget {
  @override
  _ChatHomePageState createState() => _ChatHomePageState();
}

class _ChatHomePageState extends State<ChatHomePage> {
  List<String> chatUsers = [
    "Ali",
    "Ayşe",
    "Mehmet",
    "Zeynep",
    "Fatma",
    "Ahmet",
    "Deniz"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const myAppbar(text: 'Chat'),
      drawer: const MyDrawer(),
      bottomNavigationBar: const Bottombar(
        indexmenu: 1,
      ),
      body: ListView.builder(
        itemCount: chatUsers.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
            ),
            title: Text(chatUsers[index]),
            subtitle: Text("Son mesaj"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "12:35 PM",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    "2",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message),
      ),
    );
  }
}
