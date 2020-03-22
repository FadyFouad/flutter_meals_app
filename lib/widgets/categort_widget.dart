import 'package:flutter/material.dart';

///****************************************************
///*** Created by Fady Fouad on 22-Mar-20 at 19:10.***
///****************************************************

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  const CategoryItem({Key key, this.title, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              background: Paint()..color = Color.fromRGBO(255, 255, 0, 0.25),
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
    );
  }
}
