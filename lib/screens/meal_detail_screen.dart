import 'package:flutter/material.dart';

import '../dummy_data.dart';

///****************************************************
///*** Created by Fady Fouad on 23-Mar-20 at 02:11.***
///****************************************************

class MealDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mealId =
        ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(mealId),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(8),
        child: Text("details"),
      ),
    );
  }
}
