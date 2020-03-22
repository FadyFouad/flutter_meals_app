import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermealsapp/dummy_data.dart';

///****************************************************
///*** Created by Fady Fouad on 22-Mar-20 at 18:53.***
///****************************************************

class CategoryMealsScreen extends StatelessWidget {
  final String title;
  final String id;

  const CategoryMealsScreen({Key key, this.title, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final catId = routeArgs['id'];
    final catTitle = routeArgs['title'];
    final catsMeals = DUMMY_MEALS.where((meal){
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
            return Text(catsMeals[index].title);
          },
          itemCount:catsMeals.length ,
        ),
      ),
    );
  }
}
