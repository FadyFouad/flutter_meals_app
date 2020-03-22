import 'package:flutter/material.dart';

///****************************************************
///*** Created by Fady Fouad on 22-Mar-20 at 18:53.***
///****************************************************

class CategoryMealsScreen extends StatelessWidget {
  final String title;

  const CategoryMealsScreen({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Container(
        child: Text(title),
      ),
    );
  }
}
