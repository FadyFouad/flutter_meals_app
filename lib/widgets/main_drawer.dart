import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///****************************************************
///*** Created by Fady Fouad on 24-Mar-20 at 01:47.***
///****************************************************

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 220,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              "Meals",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ListTile(
            leading: Icon(Icons.restaurant_menu),
            title: Text(
              'Meals',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
