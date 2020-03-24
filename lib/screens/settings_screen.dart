import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermealsapp/widgets/main_drawer.dart';

///****************************************************
///*** Created by Fady Fouad on 24-Mar-20 at 02:15.***
///****************************************************

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var _isGlutenFree = false;
  var _isVegan = false;
  var _isVegetarian = false;
  var _isLactoseFree = false;

  Widget _listSwitchTile(
      String title, String subTitle, bool _value, Function onChanged) {
    return SwitchListTile(
      value: _value,
      title: Text(title),
      subtitle: Text(subTitle),
      onChanged: onChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            child: Text(
              "Choose Your Favorites",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _listSwitchTile(
                  "Gluten Free",
                  "show / hide Gluten meals",
                  _isGlutenFree,
                  (bool value) {
                    setState(() {
                      _isGlutenFree = value;
                    });
                  },
                ),
                _listSwitchTile(
                  "is Vegan",
                  "show / hide Vegan meals",
                  _isVegan,
                  (bool value) {
                    setState(() {
                      _isVegan = value;
                    });
                  },
                ),
                _listSwitchTile(
                  "is Vegetarian",
                  "show / hide Vegetarian meals",
                  _isVegetarian,
                  (bool value) {
                    setState(() {
                      _isVegetarian = value;
                    });
                  },
                ),
                _listSwitchTile(
                  "Lactose Free",
                  "show / hide Lactose Free meals",
                  _isLactoseFree,
                  (bool value) {
                    setState(() {
                      _isLactoseFree = value;
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
