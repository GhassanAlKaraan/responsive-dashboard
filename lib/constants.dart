import 'package:flutter/material.dart';

const double mobileWidth = 500;
const double tabletWidth = 1000;

Color defaultBGColor = Colors.grey[300]!;


var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
  leading: Builder(
    builder: (context) => IconButton(
      icon: const Icon(Icons.menu),
      color: Colors.white,
      onPressed: () => Scaffold.of(context).openDrawer(),
    ),
  ),
);
var myDesktopAppBar = AppBar(
  backgroundColor: Colors.grey[900]
);

var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: const Column(
    children: [
      DrawerHeader(child: Icon(Icons.favorite, size: 60,color: Colors.blueGrey)),
      ListTile(leading: Icon(Icons.home), title: Text('D A S H B O A R D')),
      ListTile(leading: Icon(Icons.chat), title: Text('M E S S A G E')),
      ListTile(leading: Icon(Icons.settings), title: Text('S E T T I N G S')),
      ListTile(leading: Icon(Icons.logout), title: Text('L O G O U T')),
    ],
  ),
);