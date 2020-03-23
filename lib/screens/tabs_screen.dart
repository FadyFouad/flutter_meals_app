import 'package:flutter/material.dart';
import 'package:fluttermealsapp/screens/category_screen.dart';

///****************************************************
///*** Created by Fady Fouad on 23-Mar-20 at 15:07.***
///****************************************************

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Meals"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: 'Favorites',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CategoryScreen(title: 'Meal',),
            CategoryScreen(title: 'Meal',),
          ],
        ),
      ),
      length: 2,
    );
  }
}
