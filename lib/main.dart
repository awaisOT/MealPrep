import 'package:flutter/material.dart';
import 'screens/category_screen.dart';
import 'screens/category_meals_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Meal Prep",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal).copyWith(secondary: Colors.amberAccent),
        canvasColor: const Color.fromARGB(255, 205, 253, 240),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: const TextStyle(color: Color.fromARGB(255, 97, 97, 97)),
          bodyText2: const TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
          /*titleMedium: const TextStyle(
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
            fontSize: 20,
          )*/

        )
      ),
      home: CategoryScreen(),
      routes: {
        CatMeals.routeName:(context) => CatMeals(),
      },
    );
    
  }
}

