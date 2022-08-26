import 'package:flutter/material.dart';
import './category_meals_screen.dart';

class CatItme extends StatelessWidget {
  final String title;
  final Color color;

  const CatItme(this.title, this.color);

  void showMeals(ctx) {
    Navigator.push(ctx, MaterialPageRoute(builder: (_) {
      return CatMeals(title);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: ((() => showMeals(context))),
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [color.withOpacity(0.3), color]),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(title,
            style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
