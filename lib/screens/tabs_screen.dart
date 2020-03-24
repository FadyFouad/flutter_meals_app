import 'package:flutter/material.dart';
import 'package:fluttermealsapp/screens/category_screen.dart';
import 'package:fluttermealsapp/screens/favorites_screen.dart';
import 'package:fluttermealsapp/widgets/main_drawer.dart';

///****************************************************
///*** Created by Fady Fouad on 23-Mar-20 at 15:07.***
///****************************************************

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List <Map<String, Object>> _screens = [
    {'screen': CategoryScreen(),
      'title': "Categories"},
    { 'screen': FavoritesScreen(),
      'title': "Favorites"},
  ];
  int _selectedScreenIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(_screens[_selectedScreenIndex]['title'])),
      drawer: Drawer(child:MainDrawer()),
      body: _screens[_selectedScreenIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Theme
                .of(context)
                .primaryColor,
            icon: Icon(Icons.category),
            title: Text("Categories"),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme
                .of(context)
                .primaryColor,
            icon: Icon(Icons.favorite),
            title: Text("favorites"),
          )
        ],
        backgroundColor: Theme
            .of(context)
            .accentColor,
        unselectedItemColor: Colors.white70,
        selectedItemColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        type: BottomNavigationBarType.shifting,
      ),
    );
  }
}
