import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///****************************************************
///*** Created by Fady Fouad on 22-Mar-20 at 19:10.***
///****************************************************

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const MealItem({Key key, this.title, this.color, this.id}) : super(key: key);

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
        margin: EdgeInsets.all(1),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
//              background: Paint()..color = Color.fromRGBO(255, 255, 0, 0.25),
                fontSize: 18,
                fontWeight: FontWeight.bold,
                shadows: [Shadow(color: Colors.amber, blurRadius: 10)]),
          ),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              color.withOpacity(.1),
              color,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(16)),
      ),
      onTap: ()=> onItemTapped(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
    );
  }
}
