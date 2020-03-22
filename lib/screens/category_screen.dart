import 'package:flutter/material.dart';
import 'package:fluttermealsapp/dummy_data.dart';
import 'package:fluttermealsapp/widgets/categort_widget.dart';

///****************************************************
///*** Created by Fady Fouad on 22-Mar-20 at 18:53.***
///****************************************************

class CategoryScreen extends StatelessWidget {
  final String title;

  const CategoryScreen({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Container(
        child: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: DUMMY_CATEGORIES
              .map(
                (data) => CategoryItem(
                  color: data.color,
                  title: data.title,
                  id: data.id,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
