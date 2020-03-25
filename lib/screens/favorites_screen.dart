import 'package:flutter/material.dart';
import 'package:fluttermealsapp/models/meal.dart';
import 'package:fluttermealsapp/widgets/meal_widget.dart';

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
          child: favorites.isEmpty
              ? Text('No Favorites')
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return MealItem(
                      id: favorites[index].id,
                      title: favorites[index].title,
                      imageUrl: favorites[index].imageUrl,
                      duration: favorites[index].duration,
                      complexity: favorites[index].complexity,
                      affordability: favorites[index].affordability,
                    );
                  },
                  itemCount: favorites.length,
                ),
        ),
      ),
    );
  }
}
