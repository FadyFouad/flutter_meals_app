import 'package:flutter/material.dart';
import 'package:fluttermealsapp/models/meal.dart';

///****************************************************
///*** Created by Fady Fouad on 23-Mar-20 at 16:17.***
///****************************************************

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favorites;

  const FavoritesScreen({Key key, this.favorites}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('No Favorites'),
        ),
      ),
    );
  }
}
