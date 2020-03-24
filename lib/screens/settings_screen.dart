import 'package:flutter/material.dart';
import 'package:fluttermealsapp/widgets/main_drawer.dart';

///****************************************************
///*** Created by Fady Fouad on 24-Mar-20 at 02:15.***
///****************************************************

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Settings"),
      ),
      drawer: Drawer(child: MainDrawer(),),
      body: Center(
        child: Text("SettingsScreen"),
      ),
    );
  }
}
