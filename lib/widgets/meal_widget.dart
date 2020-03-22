import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermealsapp/models/meal.dart';

///****************************************************
///*** Created by Fady Fouad on 22-Mar-20 at 19:10.***
///****************************************************

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem(
      {Key key,
      @required this.title,
      @required this.id,
      @required this.imageUrl,
      @required this.duration,
      @required this.complexity,
      @required this.affordability})
      : super(key: key);

  void onItemTapped(BuildContext context) {
    Navigator.of(context).pushNamed('CategoryMeals', arguments: {
      "id": id,
      "title": title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: EdgeInsets.all(8),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          elevation: 4,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16)),
                    child: Image.network(
                      imageUrl,
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      onTap: () => onItemTapped(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
    );
  }
}
