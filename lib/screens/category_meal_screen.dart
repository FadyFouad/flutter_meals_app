import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermealsapp/models/meal.dart';
import 'package:fluttermealsapp/widgets/meal_widget.dart';

///****************************************************
///*** Created by Fady Fouad on 22-Mar-20 at 18:53.***
///****************************************************

class CategoryMealsScreen extends StatefulWidget {
  final String title;
  final String id;
  final List<Meal> myMeals;

  const CategoryMealsScreen({Key key, this.title, this.id, this.myMeals})
      : super(key: key);

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final catId = routeArgs['id'];
    final catTitle = routeArgs['title'];
    final catsMeals = widget.myMeals.where((meal) {
      return meal.categories.contains(catId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(catTitle),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
              id: catsMeals[index].id,
              title: catsMeals[index].title,
              imageUrl: catsMeals[index].imageUrl,
              duration: catsMeals[index].duration,
              complexity: catsMeals[index].complexity,
              affordability: catsMeals[index].affordability,
            );
          },
          itemCount: catsMeals.length,
        ),
      ),
    );
  }
}
