import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermealsapp/screens/category_meal_screen.dart';
import 'package:fluttermealsapp/screens/category_screen.dart';
import 'package:fluttermealsapp/screens/meal_detail_screen.dart';
import 'package:fluttermealsapp/screens/settings_screen.dart';
import 'package:fluttermealsapp/screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
        "init":(_)=>TabsScreen(),
        "CategoryMeals": (_) => CategoryMealsScreen(),
        "MealDetails": (_) => MealDetailsScreen(),
        "Settings": (_) => SettingsScreen(),
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
