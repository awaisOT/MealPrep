import 'package:flutter/material.dart';
import 'package:mealprep/widgets/meal_item.dart';
import '../dummy_data.dart';

class CatMeals extends StatelessWidget {
  static const routeName = "/Cat-Maals";

  // String catname;
  // CatMeals(this.catname);

  @override
  Widget build(BuildContext ctx) {
    final routeArgs =
        ModalRoute.of(ctx)?.settings.arguments as Map<String, String>;
    final catname = routeArgs['title'];
    final id =routeArgs['id'];

    final categoryMeals=DUMMY_MEALS.where((meal) {
      return meal.categories.contains(id);
    },).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('$catname Meals'),
      ),
      body: ListView.builder(itemBuilder: (context, index){
        return  MealItem(title: categoryMeals[index].title, image: categoryMeals[index].imageUrl, 
        id: categoryMeals[index].id);
      },itemCount: categoryMeals.length,)
    );
  }
}
