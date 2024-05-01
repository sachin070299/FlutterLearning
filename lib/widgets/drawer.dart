// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firstapp/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              
              accountName: Text("Sachin Parmar"),
              accountEmail: Text("sachin.parmar@borosil.com"),
              currentAccountPicture: Image.network(
                  "https://www.borosilcertification.com/images/DefaultLogo.png"),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text("Home",textScaler: TextScaler.linear(1.2)),
            onTap: () => {
              Navigator.pushNamed(context, MyRoutes.homeRoute)
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.lock_shield_fill,
            ),
            title: Text("Home 2",
            textScaler: TextScaler.linear(1.2),              
            ),
            onTap: () => {
              Navigator.pushNamed(context, MyRoutes.homeRoute2)
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.lock_shield_fill,
            ),
            title: Text("Home 3",
            textScaler: TextScaler.linear(1.2),              
            ),
            onTap: () => {
              Navigator.pushNamed(context, MyRoutes.homeRoute3)
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.star_circle,
            ),
            title: Text("Login",
            textScaler: TextScaler.linear(1.2),
            ),
            onTap: () => {
              Navigator.pushNamed(context, MyRoutes.loginRoute)
            },
          ),
        ],
      ),
    );
  }
}
