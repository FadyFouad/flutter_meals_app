import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermealsapp/dummy_data.dart';
import 'package:fluttermealsapp/screens/category_meal_screen.dart';
import 'package:fluttermealsapp/screens/category_screen.dart';
import 'package:fluttermealsapp/screens/meal_detail_screen.dart';
import 'package:fluttermealsapp/screens/settings_screen.dart';
import 'package:fluttermealsapp/screens/tabs_screen.dart';

import 'models/meal.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Meal> _myMeals = DUMMY_MEALS;
  List<Meal> _favMeals = [];
  Map<String, bool> _filters = {
    'isGlutenFree': false,
    'isLactoseFree': false,
    'isVegetarian': false,
    'isVegan': false,
  };

  void _setFilters(Map<String, bool> _filters) {
    setState(() {
      this._filters = _filters;
      _myMeals = DUMMY_MEALS.where((meal) {
        if (_filters['isGlutenFree'] && meal.isGlutenFree) {
          return false;
        }
        if (_filters['isLactoseFree'] && meal.isLactoseFree) {
          return false;
        }
        if (_filters['isVegetarian'] && meal.isVegetarian) {
          return false;
        }
        if (_filters['isVegan'] && meal.isVegan) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void _addRemoveFav(String mealID) {
    final index = _favMeals.indexWhere((meal) => mealID == meal.id);
    if (index >= 0) {
      setState(() {
        _favMeals.removeAt(index);
      });
    } else {
      setState(() {
        _favMeals.add(DUMMY_MEALS.firstWhere((meal) => mealID == meal.id));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
        canvasColor: Color.fromRGBO(255, 255, 200, 1),
      ),
      home: CategoryScreen(title: 'Meal App'),
      initialRoute: "init",
      routes: {
        "init": (_) => TabsScreen(favorites: _favMeals),
        "CategoryMeals": (_) => CategoryMealsScreen(myMeals: _myMeals),
        "MealDetails": (_) => MealDetailsScreen(addRemoveFav: _addRemoveFav),
        "Settings": (_) =>
            SettingsScreen(userFilters: _filters, filters: _setFilters),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(
          "Run",
        ),
      ),
    );
  }
}
