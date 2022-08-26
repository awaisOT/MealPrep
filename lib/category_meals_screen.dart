import 'package:flutter/material.dart';

class CatMeals extends StatelessWidget {
  String catname;
  CatMeals(this.catname);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$catname Meals'),
      ),
      body: const Center(child: Text("This page shows the meals related to the selected Category."),),
    );
  }
}
