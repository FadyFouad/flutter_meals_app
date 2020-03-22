import 'package:flutter/cupertino.dart';

///****************************************************
///*** Created by Fady Fouad on 23-Mar-20 at 00:21.***
///****************************************************

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;

  const Meal(
      {@required this.id,
      @required this.categories,
      @required this.title,
      @required this.imageUrl,
      @required this.ingredients,
      @required this.steps,
      @required this.duration,
      @required this.complexity,
      @required this.affordability,
      @required this.isGlutenFree,
      @required this.isVegan,
      @required this.isVegetarian,
      @required this.isLactoseFree});
}

enum Affordability { Affordable, Pricey, Luxurious }

enum Complexity { Simple, Normal, Hard }