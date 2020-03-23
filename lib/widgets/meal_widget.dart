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
    Navigator.of(context).pushNamed(
      'MealDetails',
      arguments: id,
    );
  }

  String get complexityString {
    switch (complexity) {
      case Complexity.Simple:
        return "Simple";
        break;
      case Complexity.Normal:
        return "Normal";
        break;
      case Complexity.Hard:
        return "Hard";
        break;
      default:
        return "UNKOWN";
    }
  }

  String get affordabilityString {
    switch (affordability) {
      case Affordability.Affordable:
        return "Affordable";
        break;
      case Affordability.Pricey:
        return "Pricey";
        break;
      case Affordability.Luxurious:
        return "Luxurious";
        break;
      default:
        return "UNKOWN";
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: EdgeInsets.all(4),
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
                  Positioned(
                    bottom: 20,
                    right: 0,
                    child: Container(
                      width: 320,
                      color: Colors.black54,
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.schedule),
                        SizedBox(
                          width: 8,
                        ),
                        Text('$duration min'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.work),
                        SizedBox(
                          width: 8,
                        ),
                        Text('$complexityString cc'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.monetization_on),
                        SizedBox(
                          width: 8,
                        ),
                        Text('$affordabilityString'),
                      ],
                    )
                  ],
                ),
              )
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
