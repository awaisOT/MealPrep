import 'package:flutter/material.dart';
import 'package:mealprep/screens/meal_details_screen.dart';
import '../Model/meal.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String image;
  final String id;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  const MealItem(
      {required this.title,
      required this.image,
      required this.id,
      required this.affordability,
      required this.complexity,
      required this.duration});

// this is enum data for complexity of the meal
  String get cmplxty {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
      case Complexity.Hard:
        return 'Hard';
      case Complexity.Challenging:
        return 'Challanging';
      default:
        return 'unknown';
    }
  }

  // this is enum data for Cost of the meal
  String get mealcost {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Afordable';
      case Affordability.Pricey:
        return 'Pricey';
      case Affordability.Luxurious:
        return 'Expensive';
      default:
        return 'unknown';
    }
  }

  void mealInfo(BuildContext context) {
// empty right now, doing nothing, it will be used for onTap functionality on inkwell
  Navigator.of(context).pushNamed(MealDetailsScreen.routeName, arguments:id);

  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(() =>  mealInfo(context)),
      borderRadius: BorderRadius.circular(20),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Stack(children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image.network(
                  image,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 20,
                right: 10,
                child: Container(
                  width: 300,
                  color: Colors.black54,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
              )
            ]),
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //this row will contain the duration icon and information.
                  Row(
                    children: <Widget>[
                      const Icon(Icons.access_time),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        '$duration',
                        style: const TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                  //this row will contain the Complexity icon and information.
                  Row(
                    children: <Widget>[
                      const Icon(Icons.gas_meter_outlined),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        cmplxty,
                        style: const TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                  //this row will contain the Cost icon and information.
                  Row(
                    children: <Widget>[
                      const Icon(Icons.attach_money_rounded),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        mealcost,
                        style: const TextStyle(fontSize: 17),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
