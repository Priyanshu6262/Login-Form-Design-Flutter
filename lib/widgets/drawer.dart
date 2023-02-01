//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://i.pinimg.com/originals/76/ef/b9/76efb9495d394564fd5aa8466c397ff3.jpg";
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 138, 238, 236),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Color.fromARGB(255, 221, 213, 56)),
                accountName: Text("Priyanshu kumar"),
                accountEmail: Text("priyanshu002@gamil.com"),
                currentAccountPicture: CircleAvatar(
                 backgroundImage: NetworkImage(imageUrl), 
                ),
              ),
            ),          
            ListTile(             
              leading: Icon(CupertinoIcons.home,
              color: Colors.white,),
              title: Text(
                "Home",
                selectionColor: Colors.black,
                textScaleFactor: 1.3,
                style: TextStyle(
                  color:Colors.white,
                ),
              ),
            ),
            ListTile(             
              leading: Icon(CupertinoIcons.profile_circled,
              color: Colors.white,),
              title: Text(
                "Profile",
                textScaleFactor: 1.3,                
                style: TextStyle(
                  
                  color:Colors.white,
                ),
              ),
            ),
            ListTile(             
              leading: Icon(CupertinoIcons.mail,
              color: Colors.white,),
              title: Text(
                "Email",
                textScaleFactor: 1.3,
                style: TextStyle(
                  color:Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
