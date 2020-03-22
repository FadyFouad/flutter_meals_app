import 'package:flutter/material.dart';

///****************************************************
///*** Created by Fady Fouad on 22-Mar-20 at 19:05.***
///****************************************************

class Category {
  final String id;
  final String title;
  final Color color;

  const Category({@required this.id, @required this.title, this.color = Colors.cyan});
}
