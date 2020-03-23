import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermealsapp/dummy_data.dart';

///****************************************************
///*** Created by Fady Fouad on 23-Mar-20 at 02:11.***
///****************************************************

class MealDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => mealId == meal.id);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 280,
                width: double.infinity,
                child: Image.network(
                  selectedMeal.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              titleContainer("Ingrediants"),
              listViewContainer(
                child: ListView.builder(
                  itemBuilder: (context, index) => Card(
                    color: Theme.of(context).accentColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        selectedMeal.ingredients[index],
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  itemCount: selectedMeal.ingredients.length,
                ),
              ),
              titleContainer('steps'),
              listViewContainer(
                child: ListView.builder(
                  itemBuilder: (context, index) => Column(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          child: Text('# ${index+1}'),
                        ),
                        title: Text(selectedMeal.steps[index]),
                      ),
                      Divider(),
                    ],
                  ),
                  itemCount: selectedMeal.steps.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget titleContainer(String title) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }

  Widget listViewContainer({Widget child}) {
    return Container(
      height: 260,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.amber,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
  }
}
